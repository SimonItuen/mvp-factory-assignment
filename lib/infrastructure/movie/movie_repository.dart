import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:moviz/domain/core/failure.dart';
import 'package:moviz/domain/movie/i_movie_repository.dart';
import 'package:moviz/domain/movie/movie_object.dart';
import 'package:moviz/infrastructure/movie/local_data_source/i_local_data_source.dart';
import 'package:moviz/infrastructure/movie/movie_dtos.dart';
import 'package:moviz/infrastructure/movie/remote_data_source/i_remote_data_source.dart';

@LazySingleton(as: IMovieRepository)
class MovieRepository implements IMovieRepository {
  final IRemoteDataSource _remoteDataSource;
  final ILocalDataSource _localDataSource;

  MovieRepository(this._remoteDataSource, this._localDataSource);

  @override
  Future<Either<Failure, Unit>> addToFavourite(Movie movie) async {
    var result = await _localDataSource
        .addMovieToFavorite(MovieDto.fromDomain(movie).toDbAdapter());
    return result.fold((failure) => left(failure), (r) => right(r));
  }

  @override
  Future<Either<Failure, Unit>> addToHidden(Movie movie) async {
    var result = await _localDataSource
        .addMovieToHidden(MovieDto.fromDomain(movie).toDbAdapter());
    return result.fold((failure) => left(failure), (r) => right(r));
  }

  @override
  Future<Either<Failure, Unit>> removeFromFavorite(Movie movie) async {
    var result = await _localDataSource
        .removeMovieFromFavorite(MovieDto.fromDomain(movie).toDbAdapter());
    return result.fold((failure) => left(failure), (r) => right(r));
  }

  @override
  Future<Either<Failure, List<Movie>>> searchMovies(String expression) async {
    var result = await _remoteDataSource.searchMovie(expression.trim());
    List<String> hiddenIds = [];
    var hiddenMovies = await _localDataSource.getHiddenMovies();
    hiddenMovies.fold((l) => null,
        (rawList) => hiddenIds = rawList.map((e) => e.id).toList());
    List<String> favouriteIds = [];
    var favoriteMovies = await _localDataSource.getFavoriteMovies();
    favoriteMovies.fold((l) => null,
        (rawList) => favouriteIds = rawList.map((e) => e.id).toList());
    return result.fold(
        (failure) => left(failure),
        (movieResponse) => right(movieResponse.results
            .map((resultJson) => MovieDto.fromJson(resultJson))
            .where((element) => !hiddenIds.contains(element.id))
            .map((movieDto) =>
                movieDto.copyWith(favorite: favouriteIds.contains(movieDto.id), hidden: false))
            .map((movieDto) => movieDto.toDomain())
            .toList()));
  }

  @override
  Future<Either<Failure, List<Movie>>> getFavouriteMovies() async {
    var result = await _localDataSource.getFavoriteMovies();
    List<String> hiddenIds = [];
    var hiddenMovies = await _localDataSource.getHiddenMovies();
    hiddenMovies.fold((l) => null,
        (rawList) => hiddenIds = rawList.map((e) => e.id).toList());
    return result.fold(
        (failure) => left(failure),
        (list) => right(list
            .where((element) => !hiddenIds.contains(element.id))
            .map((movieDto) => movieDto)
            .toList()));
  }

}
