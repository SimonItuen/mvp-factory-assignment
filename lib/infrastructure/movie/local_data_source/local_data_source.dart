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
  Future<void> addMovieToFavorite(MovieDocument movieDocument) async {
    movieDocument.favorite = true;
    await _databaseClient.put(movieDocument.id, movieDocument);
  }

  @override
  Future<void> addMovieToHidden(MovieDocument movieDocument) async {
    movieDocument.hidden = true;
    await _databaseClient.put(movieDocument.id, movieDocument);
  }

  @override
  Future<List<Movie>> getFavoriteMovies() async {
    var result = await _databaseClient.getAll();
    return result
        .where(
            (movieDocument) => movieDocument.favorite && !movieDocument.hidden)
        .toList()
        .map(
            (movieDocument) => MovieDto.fromDbAdapter(movieDocument).toDomain())
        .toList();
  }

  @override
  Future<List<Movie>> getHiddenMovies() async {
    var result = await _databaseClient.getAll();
    return result
        .where((movieDocument) => movieDocument.hidden)
        .toList()
        .map(
            (movieDocument) => MovieDto.fromDbAdapter(movieDocument).toDomain())
        .toList();
  }

  @override
  Future<void> removeMovieFromFavorite(MovieDocument movieDocument) async {
    movieDocument.favorite = false;
    await _databaseClient.put(movieDocument.id, movieDocument);
  }

  @override
  Future<List<Movie>> getAllMovies() async {
    var result = await _databaseClient.getAll();
    return result
        .toList()
        .map(
            (movieDocument) => MovieDto.fromDbAdapter(movieDocument).toDomain())
        .toList();
  }

  @override
  Future<Movie> getSingleMovie(String id) async {
    var movieDocument = await _databaseClient.get(id);
    return MovieDto.fromDbAdapter(movieDocument).toDomain();
  }
}
