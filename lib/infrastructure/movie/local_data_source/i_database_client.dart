import 'package:dartz/dartz.dart';
import 'package:moviz/domain/core/failure.dart';

abstract class IDatabaseClient<T> {
  //Abstract database client to implement CRD operations on database

  Future<List<T>> getAll();

  Future<T> get(String id);

  Future<void> put(String id, T object);

  Future<void> delete(String id);
}
