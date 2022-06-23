part of 'movie_watcher_bloc.dart';

@freezed
class MovieWatcherEvent with _$MovieWatcherEvent {
  const factory MovieWatcherEvent.onWatchAllFavorite() = OnWatchAllFavorite;
  const factory MovieWatcherEvent.onMoviesReceived(Either<Failure, List<Movie>> failureOrMovies) = OnMoviesReceieved;
  const factory MovieWatcherEvent.onFavorite() = OnFavorite;

}
