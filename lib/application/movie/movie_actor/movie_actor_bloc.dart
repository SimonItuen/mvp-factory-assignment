import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviz/domain/core/failure.dart';
import 'package:moviz/domain/movie/i_movie_repository.dart';
import 'package:moviz/domain/movie/movie_object.dart';

part 'movie_actor_bloc.freezed.dart';
part 'movie_actor_event.dart';
part 'movie_actor_state.dart';

@injectable
class MovieActorBloc extends Bloc<MovieActorEvent, MovieActorState> {
  final IMovieRepository _movieRepository;
  MovieActorBloc(this._movieRepository) : super(const MovieActorState.initial()) {
    on<AddFavoriteMovie>((event, emit) async{
      emit(const MovieActorState.actionInProgress());
      final failureOrSuccess = await _movieRepository.addToFavourite(event.movie);
      failureOrSuccess.fold((failure) => emit(MovieActorState.actionFailure(failure)), (r) => emit(const MovieActorState.actionSuccess()));
    });
    on<RemoveFavoriteMovie>((event, emit) async{
      emit(const MovieActorState.actionInProgress());
      final failureOrSuccess = await _movieRepository.removeFromFavorite(event.movie);
      failureOrSuccess.fold((failure) => emit(MovieActorState.actionFailure(failure)), (r) => emit(const MovieActorState.actionSuccess()));
    });
    on<AddHiddenMovie>((event, emit) async{
      emit(const MovieActorState.actionInProgress());
      final failureOrSuccess = await _movieRepository.addToHidden(event.movie);
      failureOrSuccess.fold((failure) => emit(MovieActorState.actionFailure(failure)), (r) => emit(const MovieActorState.actionSuccess()));
    });
  }
}
