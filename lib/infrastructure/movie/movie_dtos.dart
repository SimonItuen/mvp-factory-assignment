import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviz/domain/movie/movie_object.dart';
import 'package:moviz/infrastructure/movie/local_data_source/database_adapters.dart';

part 'movie_dtos.freezed.dart';
part 'movie_dtos.g.dart';

@freezed
class MovieDto with _$MovieDto {
  const MovieDto._();

  const factory MovieDto({
    required String id,
    required String image,
    required String title,
    required String description,
    @JsonKey(disallowNullValue: false, defaultValue: '')
    required String genres,
    @JsonKey(disallowNullValue: false, defaultValue: '0.0')
    required String imDbRating,
    @JsonKey(disallowNullValue: false, defaultValue: false) bool? favorite,
    @JsonKey(disallowNullValue: false, defaultValue: false) bool? hidden,
  }) = _MovieDto;

  factory MovieDto.fromDomain(Movie movie) {
    return MovieDto(
        id: movie.id,
        image: movie.imageUrl,
        title: movie.title,
        description: movie.description,
        genres: movie.genres,
        imDbRating: movie.rating.toString(),
        favorite: movie.favorite??false,
        hidden: movie.hidden??false);
  }

  factory MovieDto.fromDbAdapter(MovieDocument movieDocument) {
    return MovieDto(
        id: movieDocument.id,
        image: movieDocument.image,
        title: movieDocument.title,
        description: movieDocument.description,
        genres: movieDocument.genres,
        imDbRating: movieDocument.imDbRating.toString(),
        favorite: movieDocument.favorite,
        hidden: movieDocument.hidden);
  }

  factory MovieDto.fromJson(Map<String, dynamic> json) =>
      _$MovieDtoFromJson(json);

  Movie toDomain() {
    return Movie(
        id: id,
        imageUrl: image.toString(),
        title: title,
        description: description,
        genres: genres,
        rating: double.tryParse(imDbRating) ?? 0.0,
        favorite: favorite,
        hidden: hidden);
  }

  MovieDocument toDbAdapter() {
    return MovieDocument(
        id: id,
        image: image.toString(),
        title: title,
        description: description,
        genres: genres,
        imDbRating: imDbRating, favorite: favorite??false, hidden: hidden??false);
  }
}
