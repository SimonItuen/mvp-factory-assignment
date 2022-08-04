import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:moviz/domain/core/failure.dart';
import 'package:moviz/domain/movie/movie_object.dart';
import 'package:moviz/infrastructure/movie/local_data_source/i_local_data_source.dart';
import 'package:moviz/infrastructure/movie/movie_dtos.dart';
import 'package:moviz/infrastructure/movie/movie_repository.dart';
import 'package:moviz/infrastructure/movie/remote_data_source/i_remote_data_source.dart';

import 'movie_repository_test.mocks.dart';

@GenerateMocks([ILocalDataSource, IRemoteDataSource])
void main() {
  late MockILocalDataSource mockLocalDataSource;
  late MockIRemoteDataSource mockRemoteDataSource;
  late MovieRepository repository;

  const Movie tMovieObject = Movie(
      id: 'test_id_ff_hf', //ff=> means favorite : false, hf=> means hidden : false, ft=> means favorite : true, ht=> means hidden : true,
      imageUrl: 'http://sample_image',
      title: 'test_title',
      description: 'test_description',
      genres: 'test_genres',
      rating: 1.0,
      favorite: false,
      hidden: false);

  List<Movie> tFavoriteMovieList =const [
    Movie(id: 'test_id_ft_hf',
      imageUrl: 'http://sample_image',
      title: 'test_title',
      description: 'test_description',
      genres: 'test_genres',
      rating: 1.0,
      favorite: true,
      hidden: false),
    Movie(id: 'test_id_ft_ht',
      imageUrl: 'http://sample_image',
      title: 'test_title',
      description: 'test_description',
      genres: 'test_genres',
      rating: 1.0,
      favorite: true,
      hidden: true),
  ];
  List<Movie> tFavoriteWithNoHiddenMovieList =const [
    Movie(id: 'test_id_ft_hf',
      imageUrl: 'http://sample_image',
      title: 'test_title',
      description: 'test_description',
      genres: 'test_genres',
      rating: 1.0,
      favorite: true,
      hidden: false),
  ];
  List<Movie> tHiddenMovieList =const [
    Movie(id: 'test_id_ff_ht',
      imageUrl: 'http://sample_image',
      title: 'test_title',
      description: 'test_description',
      genres: 'test_genres',
      rating: 1.0,
      favorite: false,
      hidden: true),
    Movie(id: 'test_id_ft_ht',
      imageUrl: 'http://sample_image',
      title: 'test_title',
      description: 'test_description',
      genres: 'test_genres',
      rating: 1.0,
      favorite: true,
      hidden: true),
  ];

  setUp(() {
    mockLocalDataSource = MockILocalDataSource();
    mockRemoteDataSource = MockIRemoteDataSource();
    repository = MovieRepository(mockRemoteDataSource, mockLocalDataSource);
  });

  group("addToFavorite", () {
    test('should return void when call to local datasource is successful',
        () async {
      // arrange
      when(mockLocalDataSource.addMovieToFavorite(any)).thenAnswer((_) async {
        return;
      });
      // act
      await repository.addToFavourite(tMovieObject);
      // assert
      verify(mockLocalDataSource.addMovieToFavorite(MovieDto.fromDomain(tMovieObject).toDbAdapter()));
      verifyZeroInteractions(mockRemoteDataSource);
      verifyNoMoreInteractions(mockLocalDataSource);
    });
    test('should return failure when call to local datasource is unsuccessful',
        () async {
      // arrange
      when(mockLocalDataSource.addMovieToFavorite(any)).thenThrow(Exception());
      // act
      final result = await repository.addToFavourite(tMovieObject);
      // assert
      verify(mockLocalDataSource.addMovieToFavorite(MovieDto.fromDomain(tMovieObject).toDbAdapter()));
      verifyZeroInteractions(mockRemoteDataSource);
      expect(result, equals(const Left(Failure.objectNotFound())));
    });
  });

  group("addToHidden", () {
    test('should return void when call to local datasource is successful',
        () async {
      // arrange
      when(mockLocalDataSource.addMovieToHidden(any)).thenAnswer((_) async {
        return;
      });
      // act
      await repository.addToHidden(tMovieObject);
      // assert
      verify(mockLocalDataSource.addMovieToHidden(MovieDto.fromDomain(tMovieObject).toDbAdapter()));
      verifyZeroInteractions(mockRemoteDataSource);
      verifyNoMoreInteractions(mockLocalDataSource);
    });
    test('should return failure when call to local datasource is unsuccessful',
        () async {
      // arrange
      when(mockLocalDataSource.addMovieToHidden(any)).thenThrow(Exception());
      // act
      final result = await repository.addToHidden(tMovieObject);
      // assert
      verify(mockLocalDataSource.addMovieToHidden(MovieDto.fromDomain(tMovieObject).toDbAdapter()));
      verifyZeroInteractions(mockRemoteDataSource);
      expect(result, equals(const Left(Failure.objectNotFound())));
    });
  });
  group("removeFromFavorite", () {
    test('should return void when call to local datasource is successful',
        () async {
      // arrange
      when(mockLocalDataSource.removeMovieFromFavorite(any)).thenAnswer((_) async {
        return;
      });
      // act
      await repository.removeFromFavorite(tMovieObject);
      // assert
      verify(mockLocalDataSource.removeMovieFromFavorite(MovieDto.fromDomain(tMovieObject).toDbAdapter()));
      verifyZeroInteractions(mockRemoteDataSource);
      verifyNoMoreInteractions(mockLocalDataSource);
    });
    test('should return failure when call to local datasource is unsuccessful',
        () async {
      // arrange
      when(mockLocalDataSource.removeMovieFromFavorite(any)).thenThrow(Exception());
      // act
      final result = await repository.removeFromFavorite(tMovieObject);
      // assert
      verify(mockLocalDataSource.removeMovieFromFavorite(MovieDto.fromDomain(tMovieObject).toDbAdapter()));
      verifyZeroInteractions(mockRemoteDataSource);
      expect(result, equals(const Left(Failure.objectNotFound())));
    });
  });

  group("getFavouriteMovies", () {
    test('should return a list of favorite movies with no hidden movie when call to local datasource is successful',
        () async {
      // arrange
      when(mockLocalDataSource.getFavoriteMovies()).thenAnswer((_) async {
        return tFavoriteMovieList;
      });
      when(mockLocalDataSource.getHiddenMovies()).thenAnswer((_) async {
        return tHiddenMovieList;
      });
      // act
     Either<Failure,List<Movie>> result = await repository.getFavouriteMovies();
      // assert
      result.fold((l) => l, (r) => expect(r, tFavoriteWithNoHiddenMovieList));
      verifyInOrder([mockLocalDataSource.getFavoriteMovies(), mockLocalDataSource.getHiddenMovies()]);
      verifyNoMoreInteractions(mockLocalDataSource);
      verifyZeroInteractions(mockRemoteDataSource);
    });
    test('should return failure when call to local datasource is unsuccessful',
        () async {
      // arrange
      when(mockLocalDataSource.removeMovieFromFavorite(any)).thenThrow(Exception());
      // act
      final result = await repository.removeFromFavorite(tMovieObject);
      // assert
      verify(mockLocalDataSource.removeMovieFromFavorite(MovieDto.fromDomain(tMovieObject).toDbAdapter()));
      verifyZeroInteractions(mockRemoteDataSource);
      expect(result, equals(const Left(Failure.objectNotFound())));
    });
  });

  group("searchMovies", () {
    test('should return a list of favorite movies with no hidden movie when call to local datasource is successful',
        () async {
      // arrange
      when(mockLocalDataSource.getFavoriteMovies()).thenAnswer((_) async {
        return tFavoriteMovieList;
      });
      when(mockLocalDataSource.getHiddenMovies()).thenAnswer((_) async {
        return tHiddenMovieList;
      });
      // act
     Either<Failure,List<Movie>> result = await repository.getFavouriteMovies();
      // assert
      result.fold((l) => l, (r) => expect(r, tFavoriteWithNoHiddenMovieList));
      verifyInOrder([mockLocalDataSource.getFavoriteMovies(), mockLocalDataSource.getHiddenMovies()]);
      verifyNoMoreInteractions(mockLocalDataSource);
      verifyZeroInteractions(mockRemoteDataSource);
    });
    test('should return failure when call to local datasource is unsuccessful',
        () async {
      // arrange
      when(mockLocalDataSource.removeMovieFromFavorite(any)).thenThrow(Exception());
      // act
      final result = await repository.removeFromFavorite(tMovieObject);
      // assert
      verify(mockLocalDataSource.removeMovieFromFavorite(MovieDto.fromDomain(tMovieObject).toDbAdapter()));
      verifyZeroInteractions(mockRemoteDataSource);
      expect(result, equals(const Left(Failure.objectNotFound())));
    });
  });
}
