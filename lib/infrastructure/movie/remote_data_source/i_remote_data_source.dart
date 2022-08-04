import 'package:dartz/dartz.dart';
import 'package:moviz/domain/core/failure.dart';
import 'package:moviz/infrastructure/movie/remote_data_source/responses.dart';

abstract class IRemoteDataSource{
  Future<MovieResponse> searchMovie(String expression);
}