import 'package:dartz/dartz.dart';
import 'package:moviz/domain/core/failure.dart';
import 'package:moviz/domain/movie/movie_object.dart';
import 'package:moviz/infrastructure/movie/local_data_source/database_adapters.dart';

abstract class ILocalDataSource {
  Future<Either<Failure, List<Movie>>> getFavoriteMovies();

  Future<Either<Failure, List<Movie>>> getAllMovies();

  Future<Either<Failure, List<Movie>>> getHiddenMovies();

  Future<Either<Failure, Movie>> getSingleMovie(String id);

  Future<Either<Failure, Unit>> addMovieToFavorite(MovieDocument movieDocument);

  Future<Either<Failure, Unit>> addMovieToHidden(MovieDocument movieDocument);

  Future<Either<Failure, Unit>> removeMovieFromFavorite(
      MovieDocument movieDocument);
}
