import 'package:dartz/dartz.dart';
import 'package:moviz/domain/core/failure.dart';
import 'package:moviz/domain/movie/movie_object.dart';



abstract class IMovieRepository{
  Future<Either<Failure, List<Movie>>>searchMovies(String expression);

  Future<Either<Failure, List<Movie>>>getFavouriteMovies();

  Future<Either<Failure, Unit>>addToFavourite(Movie movie);

  Future<Either<Failure, Unit>>removeFromFavorite(Movie movie);

  Future<Either<Failure, Unit>>addToHidden(Movie movie);


}