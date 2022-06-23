part of 'movie_actor_bloc.dart';

@freezed
class MovieActorEvent with _$MovieActorEvent {
  const factory MovieActorEvent.addFavoriteMovie(Movie movie) = AddFavoriteMovie;
  const factory MovieActorEvent.addHiddenMovie(Movie movie) = AddHiddenMovie;
  const factory MovieActorEvent.removeFavoriteMovie(Movie movie) = RemoveFavoriteMovie;
}
