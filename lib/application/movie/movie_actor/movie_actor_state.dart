part of 'movie_actor_bloc.dart';

@freezed
class MovieActorState with _$MovieActorState {
  const factory MovieActorState.initial() = _Initial;
  const factory MovieActorState.actionInProgress() = _ActionInProgress;
  const factory MovieActorState.actionFailure(Failure failure) = _actionFailure;
  const factory MovieActorState.actionSuccess() = _actionSuccess;
}