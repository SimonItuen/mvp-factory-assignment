import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviz/domain/core/failure.dart';
import 'package:moviz/domain/movie/i_movie_repository.dart';
import 'package:moviz/domain/movie/movie_object.dart';

part 'movie_watcher_bloc.freezed.dart';
part 'movie_watcher_event.dart';
part 'movie_watcher_state.dart';

@injectable
class MovieWatcherBloc extends Bloc<MovieWatcherEvent, MovieWatcherState> {
  StreamSubscription<Either<Failure, List<Movie>>>?
  _favoriteStreamSubscription;
  final IMovieRepository _movieRepository;

  MovieWatcherBloc(this._movieRepository)
      : super(const MovieWatcherState.initial()) {
    // on<OnWatchAllFavorite>((event, emit) async {
    //   emit(const MovieWatcherState.loading());
    //   await _favoriteStreamSubscription?.cancel();
    //   _favoriteStreamSubscription = _movieRepository.getFavouriteMoviesStream().listen(
    //           (failureOrMovies) =>
    //           add(MovieWatcherEvent.onMoviesReceived(failureOrMovies)));
    // });
    // on<OnMoviesReceieved>((event, emit) async {
    //   event.failureOrMovies.fold(
    //           (failure) => emit(MovieWatcherState.error(failure)),
    //           (movies) => emit(MovieWatcherState.content(movies)));
    // });
    on<OnFavorite>((event, emit) async {
      emit(const MovieWatcherState.loading());
      final failureOrResponse = await _movieRepository.getFavouriteMovies();
      failureOrResponse.fold((failure) => emit(MovieWatcherState.error(failure)), (movies) => movies.isEmpty?emit(const MovieWatcherState.empty()):emit(MovieWatcherState.content(movies)));
    });
  }
}
