import 'package:dartz/dartz.dart';
import 'package:moviz/domain/core/failure.dart';
import 'package:moviz/domain/movie/movie_object.dart';
import 'package:moviz/infrastructure/movie/local_data_source/database_adapters.dart';

abstract class ILocalDataSource {
  Future< List<Movie>> getFavoriteMovies();

  Future< List<Movie>> getAllMovies();

  Future< List<Movie>> getHiddenMovies();

  Future< Movie> getSingleMovie(String id);

  Future<void> addMovieToFavorite(MovieDocument movieDocument);

  Future<void> addMovieToHidden(MovieDocument movieDocument);

  Future<void> removeMovieFromFavorite(
      MovieDocument movieDocument);
}
