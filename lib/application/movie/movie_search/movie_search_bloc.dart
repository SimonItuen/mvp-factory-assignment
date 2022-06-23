import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviz/domain/core/failure.dart';
import 'package:moviz/domain/movie/i_movie_repository.dart';
import 'package:moviz/domain/movie/movie_object.dart';

part 'movie_search_bloc.freezed.dart';
part 'movie_search_event.dart';
part 'movie_search_state.dart';

@injectable
class MovieSearchBloc extends Bloc<MovieSearchEvent, MovieSearchState> {
  List<Movie> cachedMovies = [];
  String expression ='';
  final IMovieRepository _movieRepository;

  MovieSearchBloc(this._movieRepository)
      : super(const MovieSearchState.initial()) {
    on<OnSearch>((event, emit) async {
      emit(const MovieSearchState.loading());
      final failureOrResponse =
          await _movieRepository.searchMovies(event.expression);
      failureOrResponse.fold((failure) => emit(MovieSearchState.error(failure)),
          (movies) {
        expression = event.expression;
        cachedMovies = movies;
        return movies.isEmpty
            ? emit(const MovieSearchState.empty())
            : emit(MovieSearchState.content(movies));
      });
    });
    on<OnRebuild>((event, emit) async {
      emit(const MovieSearchState.loading());
      if(event.remove) {
        cachedMovies.remove(event.movie);
      }else{
        int index = cachedMovies.indexOf(event.movie);
        Movie updatedMovie = cachedMovies[index].copyWith(favorite: !event.movie.favorite!);
        cachedMovies[index] = updatedMovie;
      }
      emit(MovieSearchState.content(cachedMovies));
      final failureOrResponse =
      await _movieRepository.searchMovies(expression);
      failureOrResponse.fold((failure) => emit(MovieSearchState.error(failure)),
              (movies) {
            expression = expression;
            cachedMovies = movies;
            return movies.isEmpty
                ? emit(const MovieSearchState.empty())
                : emit(MovieSearchState.content(movies));
          });
    });
  }
}
