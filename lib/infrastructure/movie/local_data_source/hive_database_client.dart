import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:moviz/domain/core/failure.dart';
import 'package:moviz/infrastructure/movie/local_data_source/database_adapters.dart';
import 'package:moviz/infrastructure/movie/local_data_source/i_database_client.dart';

@LazySingleton(as: IDatabaseClient)
class HiveDatabaseClient<T> implements IDatabaseClient<T> {
  HiveDatabaseClient();

  @override
  Future<Either<Failure, T>> get(String id) async {
    Box box = await Hive.openBox<MovieDocument>('Movies');

    T object = box.get(id);
    if (object == null) {
      return left(const Failure.objectNotFound());
    }
    return right(object);
  }

  @override
  Future<Either<Failure, Unit>> put(String id, T object) async {
    Box box = await Hive.openBox<MovieDocument>('Movies');

    await box.put(id, object);
    return right(unit);
  }

  @override
  Future<Either<Failure, Unit>> delete(String id) async {
    Box box = await Hive.openBox<MovieDocument>('Movies');

    await box.delete(id);
    return right(unit);
  }

  @override
  Future<Either<Failure, List<T>>> getAll() async {
    Box box = await Hive.openBox<MovieDocument>('Movies');
    return right(box.values.toList() as List<T>);
  }


}
