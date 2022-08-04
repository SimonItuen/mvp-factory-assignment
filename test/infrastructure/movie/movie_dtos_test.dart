import 'package:moviz/domain/movie/movie_object.dart';
import 'package:moviz/infrastructure/movie/local_data_source/database_adapters.dart';
import 'package:moviz/infrastructure/movie/movie_dtos.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  const tMovieDto = MovieDto(
      id: 'test_id',
      image: 'http://sample_image',
      title: 'test_title',
      description: 'test_description',
      genres: 'test_genres',
      imDbRating: '1.0',
      favorite: false,
      hidden: false);
  const tMovieObject = Movie(
      id: 'test_id',
      imageUrl: 'http://sample_image',
      title: 'test_title',
      description: 'test_description',
      genres: 'test_genres',
      rating: 1.0,
      favorite: false,
      hidden: false);
  final tMovieDocument = MovieDocument(
      id: 'test_id',
      image: 'http://sample_image',
      title: 'test_title',
      description: 'test_description',
      genres: 'test_genres',
      imDbRating: '1.0',
      favorite: false,
      hidden: false);
  final Map<String, dynamic> tMovieJson = {
    'id': 'test_id',
    'image': 'http://sample_image',
    'title': 'test_title',
    'description': 'test_description',
    'genres': 'test_genres',
    'imDbRating': '1.0',
  };

  group('Movie Data Transfer Objects for MovieObject, MovieJson, MovieDocument' , () {
    test('should convert MovieDto to Movie object', () {
      //arrange
      //act
      Movie movie = tMovieDto.toDomain();
      //assert
      expect(movie, tMovieObject);
    });

    test('should convert MovieDto to Movie object', () {
      //arrange
      //act
      Movie movie = tMovieDto.toDomain();
      //assert
      expect(movie, tMovieObject);
    });

    test('should convert MovieDto to Movie json', () {
      //arrange
      //act
      final movieJson = tMovieDto.toJson();
      //assert
      expect(movieJson.runtimeType, tMovieJson.runtimeType);
    });

    test('should convert MovieDto to Movie document', () {
      //arrange
      //act
      final movieDocument = tMovieDto.toDbAdapter();
      //assert
      expect(movieDocument.runtimeType, tMovieDocument.runtimeType);
    });

    test('should convert Movie Document to Movie Dto', () {
      //arrange
      //act
      MovieDto movieDto = MovieDto.fromDbAdapter(tMovieDocument);
      //assert
      expect(movieDto, tMovieDto);
    });

    test('should convert Movie object from Movie Dto', () {
      //arrange
      //act
      MovieDto movieDto = MovieDto.fromDomain(tMovieObject);
      //assert
      expect(movieDto, tMovieDto);
    });

    test('should convert Movie Dto from json', () {
      //arrange
      //act
      MovieDto movieDto = MovieDto.fromJson(tMovieJson);
      //assert
      expect(movieDto, tMovieDto);
    });
  });
}
