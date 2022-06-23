part of 'movie_search_bloc.dart';

@freezed
class MovieSearchEvent with _$MovieSearchEvent {
  const factory MovieSearchEvent.onSearch(String expression) = OnSearch;
  const factory MovieSearchEvent.onRebuild(Movie movie, bool remove) = OnRebuild;

}
