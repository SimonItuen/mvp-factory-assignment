import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:moviz/application/movie/movie_search/movie_search_bloc.dart';
import 'package:moviz/domain/core/failure.dart';
import 'package:moviz/domain/movie/i_movie_repository.dart';
import 'package:moviz/domain/movie/movie_object.dart';

import '../movie_actor/movie_actor_bloc_test.mocks.dart';

@GenerateMocks([IMovieRepository])
void main(){
  late MockIMovieRepository mockIMovieRepository;
  late MovieSearchBloc bloc;
  List<Movie> tCachedMovies = [];
  String tExpression ='';

  Movie tMovie =
    const Movie(id: 'test_id_ft_ht',
        imageUrl: 'http://sample_image',
        title: 'test_title',
        description: 'test_description',
        genres: 'test_genres',
        rating: 1.0,
        favorite: true,
        hidden: false);
  List<Movie> tFavoriteMovieList =const [
    Movie(id: 'test_id_ft_hf',
        imageUrl: 'http://sample_image',
        title: 'test_title',
        description: 'test_description',
        genres: 'test_genres',
        rating: 1.0,
        favorite: true,
        hidden: false),
    Movie(id: 'test_id_ft_ht',
        imageUrl: 'http://sample_image',
        title: 'test_title',
        description: 'test_description',
        genres: 'test_genres',
        rating: 1.0,
        favorite: true,
        hidden: true),
  ];


  Failure tInternetFailure = const Failure.clientError(401);
  
  setUp((){
    mockIMovieRepository = MockIMovieRepository();
    bloc = MovieSearchBloc(mockIMovieRepository);
  });

  blocTest('should emit [] when nothing is added',
      build: () => bloc, expect: () => const []);

  group('OnSearch', () {
    blocTest(
        'should emit [MovieSearchState.loading, MovieSearchState.content] when search result is a list of favorite movies',
        setUp: (){
          when(mockIMovieRepository.searchMovies(any)).thenAnswer((_) async =>  Right(tFavoriteMovieList));
        },
        build: () => bloc,
        act: (MovieSearchBloc bloc) => bloc.add(MovieSearchEvent.onSearch(tExpression)),
        expect: () =>  [const MovieSearchState.loading(), MovieSearchState.content(tFavoriteMovieList)]);

    blocTest(
        'should emit [MovieSearchState.loading, MovieSearchState.empty] when search result is empty',
        setUp: (){
          when(mockIMovieRepository.searchMovies(tExpression)).thenAnswer((_) async =>  Right(List.empty()));
        },
        build: () => bloc,
        act: (MovieSearchBloc bloc) =>  bloc.add( MovieSearchEvent.onSearch(tExpression)),
        expect: () =>  const [ MovieSearchState.loading(), MovieSearchState.empty()]);

    blocTest(
        'should emit [MovieSearchState.loading, MovieSearchState.error] when search is unsuccessful',
        setUp: (){
          when(mockIMovieRepository.searchMovies(tExpression)).thenAnswer((_) async =>  Left(tInternetFailure));
        },
        build: () => bloc,
        act: (MovieSearchBloc bloc) => bloc.add(MovieSearchEvent.onSearch(tExpression)),
        expect: () =>   [const MovieSearchState.loading(), MovieSearchState.error(tInternetFailure)]);
  });

  group('OnRebuild', () {
    blocTest(
        'should emit [MovieSearchState.loading, MovieSearchState.content(cachedMovies), MovieSearchState.content(searchedMovies)] when search result rebuilds a list of favorite movies',
        setUp: (){
          when(mockIMovieRepository.searchMovies(any)).thenAnswer((_) async =>  Right(tFavoriteMovieList));
        },
        build: () => bloc,
        act: (MovieSearchBloc bloc) => bloc.add(MovieSearchEvent.onRebuild(tMovie, true)),
        expect: () =>  [const MovieSearchState.loading(), MovieSearchState.content(tCachedMovies),MovieSearchState.content(tFavoriteMovieList)]);

    blocTest(
        'should emit [MovieSearchState.loading, MovieSearchState.content(cachedMovies), MovieSearchState.content(searchedMovies)] when search result rebuilds an empty list',
        setUp: (){
          when(mockIMovieRepository.searchMovies(tExpression)).thenAnswer((_) async =>  Right(List.empty()));
        },
        build: () => bloc,
        act: (MovieSearchBloc bloc) => bloc.add(MovieSearchEvent.onRebuild(tMovie, true)),
        expect: () =>  [const MovieSearchState.loading(), MovieSearchState.content(tCachedMovies), const MovieSearchState.empty()]);

    blocTest(
        'should emit [MovieSearchState.loading, MovieSearchState.content(cachedMovies) ,MovieSearchState.error] when rebuild is unsuccessful',
        setUp: (){
          when(mockIMovieRepository.searchMovies(tExpression)).thenAnswer((_) async =>  Left(tInternetFailure));
        },
        build: () => bloc,
        act: (MovieSearchBloc bloc) => bloc.add(MovieSearchEvent.onRebuild(tMovie, true)),
        expect: () =>   [const MovieSearchState.loading(), MovieSearchState.content(tCachedMovies), MovieSearchState.error(tInternetFailure)]
    );
  });
  
}