import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:moviz/domain/movie/movie_object.dart';
import 'package:moviz/infrastructure/movie/local_data_source/database_adapters.dart';
import 'package:moviz/infrastructure/movie/local_data_source/hive_database_client.dart';
import 'package:moviz/infrastructure/movie/local_data_source/i_database_client.dart';
import 'package:mockito/mockito.dart';
import 'package:moviz/infrastructure/movie/local_data_source/i_local_data_source.dart';
import 'package:moviz/infrastructure/movie/local_data_source/local_data_source.dart';
import 'package:moviz/infrastructure/movie/movie_dtos.dart';

import 'local_data_source_test.mocks.dart';

@GenerateMocks([IDatabaseClient])
void main() {
  late MockIDatabaseClient mockIDatabaseClient;
  late LocalDataSource localDataSource;
  const tId = 'test_id';
  final tMovieDocument = MovieDocument(
      id: 'test_id',
      image: 'http://sample_image',
      title: 'test_title',
      description: 'test_description',
      genres: 'test_genres',
      imDbRating: '1.0',
      favorite: false,
      hidden: false);
  const tFavoriteMovie = Movie(
      id: 'test_id',
      imageUrl: 'http://sample_image',
      title: 'test_title',
      description: 'test_description',
      genres: 'test_genres',
      rating: 1.0,
      favorite: true,
      hidden: false);
  const tHiddenMovie = Movie(
      id: 'test_id',
      imageUrl: 'http://sample_image',
      title: 'test_title',
      description: 'test_description',
      genres: 'test_genres',
      rating: 1.0,
      favorite: false,
      hidden: true);
  const tMovieList = [
    Movie(id: 'test_id',
        imageUrl: 'http://sample_image',
        title: 'test_title',
        description: 'test_description',
        genres: 'test_genres',
        rating: 1.0,
        favorite: true,
        hidden: true),
    Movie(id: 'test_id',
        imageUrl: 'http://sample_image',
        title: 'test_title',
        description: 'test_description',
        genres: 'test_genres',
        rating: 1.0,
        favorite: false,
        hidden: false),
    Movie(id: 'test_id',
        imageUrl: 'http://sample_image',
        title: 'test_title',
        description: 'test_description',
        genres: 'test_genres',
        rating: 1.0,
        favorite: false,
        hidden: true),
    Movie(id: 'test_id',
        imageUrl: 'http://sample_image',
        title: 'test_title',
        description: 'test_description',
        genres: 'test_genres',
        rating: 1.0,
        favorite: true,
        hidden: false),
  ];
  setUp(() {
    mockIDatabaseClient = MockIDatabaseClient();
    localDataSource = LocalDataSource(mockIDatabaseClient);
  });

  group('addMovieToFavorite', () {
    test('should call put method on database', () async {
      // arrange
      when(mockIDatabaseClient.put(any, any)).thenAnswer((_) async {
        return;
      });
      // act
     await localDataSource.addMovieToFavorite(tMovieDocument);
      // assert
      verify(mockIDatabaseClient.put(tId, tMovieDocument));
      verifyNoMoreInteractions(mockIDatabaseClient);
    });
  });

  group('addMovieToHidden', () {
    test('should call put method on database', () async {
      // arrange
      when(mockIDatabaseClient.put(any, any)).thenAnswer((_) async {
        return;
      });
      // act
      await localDataSource.addMovieToHidden(tMovieDocument);
      // assert
      verify(mockIDatabaseClient.put(tId, tMovieDocument));
      verifyNoMoreInteractions(mockIDatabaseClient);
    });
  });

  group('removeFromFavorite', () {
    test('should call put method on database', () async {
      // arrange
      when(mockIDatabaseClient.put(any, any)).thenAnswer((_) async {
        return;
      });
      // act
      await localDataSource.removeMovieFromFavorite(tMovieDocument);
      // assert
      verify(mockIDatabaseClient.put(tId, tMovieDocument));
      verifyNoMoreInteractions(mockIDatabaseClient);
    });
  });

  group('getMovieList', () {
    test('should get all movies in the database', () async {
      // arrange
      when(mockIDatabaseClient.getAll()).thenAnswer((_) async => tMovieList.map((movie) => MovieDto.fromDomain(movie).toDbAdapter()).toList());
      // act
      List<Movie> movies  = await localDataSource.getAllMovies();
      // assert
      expect(movies, tMovieList);
      verify(mockIDatabaseClient.getAll());
      verifyNoMoreInteractions(mockIDatabaseClient);
    });

    test('should get only hidden movies in the database', () async {
      // arrange
      when(mockIDatabaseClient.getAll()).thenAnswer((_) async => tMovieList.map((movie) => MovieDto.fromDomain(movie).toDbAdapter()).toList());
      // act
      List<Movie> movies= await localDataSource.getHiddenMovies();
      // assert
      expect(movies.where((movie) => movie.hidden!), tMovieList.where((movie) => movie.hidden!));
      verify(mockIDatabaseClient.getAll());
      verifyNoMoreInteractions(mockIDatabaseClient);
    });

    test('should get only unhidden favorite movies in the database', () async {
      // arrange
      when(mockIDatabaseClient.getAll()).thenAnswer((_) async => tMovieList.map((movie) => MovieDto.fromDomain(movie).toDbAdapter()).toList());
      // act
      List<Movie> favoriteMovies= await localDataSource.getFavoriteMovies();
      // assert
      expect(favoriteMovies, tMovieList.where((movie) => movie.favorite! && !movie.hidden!).toList());
      verify(mockIDatabaseClient.getAll());
      verifyNoMoreInteractions(mockIDatabaseClient);
    });
  });
}
