import 'package:dartz/dartz.dart';
import 'package:moviz/domain/core/failure.dart';

abstract class IDatabaseClient<T> {
  //Abstract database client to implement CRD operations on database

  Future<Either<Failure,List<T>>> getAll();

  Future<Either<Failure,T>> get(String id);

  Future<Either<Failure,Unit>> put(String id, T object);

  Future<Either<Failure,Unit>> delete(String id);
}
