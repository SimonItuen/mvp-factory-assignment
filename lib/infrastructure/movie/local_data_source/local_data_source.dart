import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:moviz/domain/core/failure.dart';
import 'package:moviz/domain/movie/movie_object.dart';
import 'package:moviz/infrastructure/movie/local_data_source/database_adapters.dart';
import 'package:moviz/infrastructure/movie/local_data_source/i_database_client.dart';
import 'package:moviz/infrastructure/movie/local_data_source/i_local_data_source.dart';
import 'package:moviz/infrastructure/movie/movie_dtos.dart';

@LazySingleton(as: ILocalDataSource)
class LocalDataSource implements ILocalDataSource {
  final IDatabaseClient _databaseClient;

  LocalDataSource(this._databaseClient);

  @override
  Future<Either<Failure, Unit>> addMovieToFavorite(
      MovieDocument movieDocument) async {
    movieDocument.favorite = true;
    var result = await _databaseClient.put(movieDocument.id, movieDocument);
    return result.fold((failure) => left(failure), (r) => right(r));
  }

  @override
  Future<Either<Failure, Unit>> addMovieToHidden(
      MovieDocument movieDocument) async {
    movieDocument.hidden = true;
    var result = await _databaseClient.put(movieDocument.id, movieDocument);
    return result.fold((failure) => left(failure), (r) => right(r));
  }

  @override
  Future<Either<Failure, List<Movie>>> getFavoriteMovies() async {
    var result = await _databaseClient.getAll();
    return result.fold(
        (failure) => left(failure),
        (rawList) => right(rawList
            .where((movieDocument) =>
                movieDocument.favorite && !movieDocument.hidden)
            .toList()
            .map((movieDocument) =>
                MovieDto.fromDbAdapter(movieDocument).toDomain())
            .toList()));
  }


  @override
  Future<Either<Failure, List<Movie>>> getHiddenMovies() async {
    var result = await _databaseClient.getAll();
    return result.fold(
        (failure) => left(failure),
        (rawList) => right(rawList
            .where((movieDocument) => movieDocument.hidden)
            .toList()
            .map((movieDocument) =>
                MovieDto.fromDbAdapter(movieDocument).toDomain())
            .toList()));
  }

  @override
  Future<Either<Failure, Unit>> removeMovieFromFavorite(
      MovieDocument movieDocument) async {
    movieDocument.favorite = false;
    var result = await _databaseClient.put(movieDocument.id, movieDocument);
    return result.fold((failure) => left(failure), (r) => right(r));
  }

  @override
  Future<Either<Failure, List<Movie>>> getAllMovies() async {
    var result = await _databaseClient.getAll();
    return result.fold(
        (failure) => left(failure),
        (rawList) => right(rawList
            .toList()
            .map((movieDocument) =>
                MovieDto.fromDbAdapter(movieDocument).toDomain())
            .toList()));
  }

  @override
  Future<Either<Failure, Movie>> getSingleMovie(String id) async{
    var result = await _databaseClient.get(id);
    return result.fold((failure) => left(failure), (movie) => right(movie));
  }
}
