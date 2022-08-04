import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:moviz/domain/core/failure.dart';
import 'package:moviz/domain/movie/i_movie_repository.dart';
import 'package:moviz/domain/movie/movie_object.dart';
import 'package:moviz/infrastructure/movie/core/exceptions.dart';
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
    try {
      await _localDataSource
          .addMovieToFavorite(MovieDto.fromDomain(movie).toDbAdapter());
      return const Right(unit);
    } catch (e) {
      return const Left(Failure.objectNotFound());
    }
  }

  @override
  Future<Either<Failure, Unit>> addToHidden(Movie movie) async {
    try {
      await _localDataSource
          .addMovieToHidden(MovieDto.fromDomain(movie).toDbAdapter());
      return const Right(unit);
    } catch (e) {
      return const Left(Failure.objectNotFound());
    }
  }

  @override
  Future<Either<Failure, Unit>> removeFromFavorite(Movie movie) async {
    try {
      await _localDataSource
          .removeMovieFromFavorite(MovieDto.fromDomain(movie).toDbAdapter());
      return const Right(unit);
    } catch (e) {
      return const Left(Failure.objectNotFound());
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> searchMovies(String expression) async {
    try {
      var movieResponses =
          await _remoteDataSource.searchMovie(expression.trim());

      var hiddenMovies = await _localDataSource.getHiddenMovies();
      List<String> hiddenIds = hiddenMovies.map((e) => e.id).toList();
      var favoriteMovies = await _localDataSource.getFavoriteMovies();
      List<String> favouriteIds = favoriteMovies.map((e) => e.id).toList();
      return Right(movieResponses.results
          .map((resultJson) => MovieDto.fromJson(resultJson))
          .where((element) => !hiddenIds.contains(element.id))
          .map((movieDto) => movieDto.copyWith(
              favorite: favouriteIds.contains(movieDto.id), hidden: false))
          .map((movieDto) => movieDto.toDomain())
          .toList());
    } on ObjectNotFoundException catch (e) {
      return const Left(Failure.objectNotFound());
    } on ServerException catch (e) {
      return Left(Failure.serverError(e.code));
    } catch (e) {
      return const Left(Failure.somethingWentWrong());
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getFavouriteMovies() async {
    try {
      var result = await _localDataSource.getFavoriteMovies();
      var hiddenMovies = await _localDataSource.getHiddenMovies();
      List<String> hiddenIds = hiddenMovies.map((e) => e.id).toList();
      return Right(result
          .where((element) => !hiddenIds.contains(element.id))
          .map((movieDto) => movieDto)
          .toList());
    } catch (e) {
      return const Left(Failure.objectNotFound());
    }
  }
}
