part of 'movie_watcher_bloc.dart';

@freezed
class MovieWatcherState with _$MovieWatcherState {
  const factory MovieWatcherState.initial() = _Initial;
  const factory MovieWatcherState.loading() = _Loading;
  const factory MovieWatcherState.empty() = _Empty;
  const factory MovieWatcherState.content(List<Movie> movies) = _Content;
  const factory MovieWatcherState.error(Failure failure) = _Error;

}