import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_object.freezed.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required String id,
    required String imageUrl,
    required String title,
    required String description,
    required String genres,
    required double rating,
    bool? favorite,
    bool? hidden
  }) = _Movie;
}
