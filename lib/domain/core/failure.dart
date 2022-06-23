import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.serverError(int statusCode) = _ServerError;
  const factory Failure.clientError(int statusCode) = _ClientError;
  const factory Failure.noInternetConnection() = _noInternetConnection;
  const factory Failure.somethingWentWrong() = _SomethingWentWrong;
  const factory Failure.databaseClosed() = _DatabaseClosed;
  const factory Failure.objectNotFound() = _ObjectNotFound;
  const factory Failure.unexpected() = _unexpected;


}
