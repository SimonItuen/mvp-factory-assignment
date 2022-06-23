part of 'movie_search_bloc.dart';

@freezed
class MovieSearchState with _$MovieSearchState {
  const factory MovieSearchState.initial() = _Initial;
  const factory MovieSearchState.loading() = _Loading;
  const factory MovieSearchState.empty() = _Empty;
  const factory MovieSearchState.content(List<Movie> movies) = _Content;
  const factory MovieSearchState.error(Failure failure) = _Error;
}