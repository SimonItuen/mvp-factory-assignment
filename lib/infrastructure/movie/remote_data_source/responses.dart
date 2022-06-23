import 'package:freezed_annotation/freezed_annotation.dart';

part 'responses.freezed.dart';
part 'responses.g.dart';

@freezed
class MovieResponse with _$MovieResponse {
  const factory MovieResponse(
      {required String queryString, required List<Map<String, dynamic>> results}) = _MovieResponse;

  factory MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);
}
