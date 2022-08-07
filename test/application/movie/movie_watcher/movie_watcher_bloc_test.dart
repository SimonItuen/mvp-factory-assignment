import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:moviz/application/movie/movie_watcher/movie_watcher_bloc.dart';
import 'package:moviz/domain/core/failure.dart';
import 'package:moviz/domain/movie/i_movie_repository.dart';
import 'package:moviz/domain/movie/movie_object.dart';

import '../movie_actor/movie_actor_bloc_test.mocks.dart';

@GenerateMocks([IMovieRepository])
void main() {
  late MockIMovieRepository mockIMovieRepository;
  late MovieWatcherBloc bloc;

  List<Movie> tFavoriteWithNoHiddenMovieList =const [
    Movie(id: 'test_id_ft_hf',
        imageUrl: 'http://sample_image',
        title: 'test_title',
        description: 'test_description',
        genres: 'test_genres',
        rating: 1.0,
        favorite: true,
        hidden: false),
  ];

  Failure tInternetFailure = const Failure.clientError(401);


  setUp(() {
    mockIMovieRepository = MockIMovieRepository();
    bloc = MovieWatcherBloc(mockIMovieRepository);
  });

  blocTest('should emit [] when nothing is added',
      build: () => bloc, expect: () => const []);

  group('OnFavorite', () {
    blocTest(
        'should emit [MovieWatcherState.loading, MovieWatcherState.content] when favorites movies are retrieved successfully and is not empty',
        setUp: (){
          when(mockIMovieRepository.getFavouriteMovies()).thenAnswer((_) async =>  Right(tFavoriteWithNoHiddenMovieList));
        },
        build: () => bloc,
        act: (MovieWatcherBloc bloc) => bloc.add(const MovieWatcherEvent.onFavorite()),
        expect: () =>  [const MovieWatcherState.loading(), MovieWatcherState.content(tFavoriteWithNoHiddenMovieList)]);

    blocTest(
        'should emit [MovieWatcherState.loading, MovieWatcherState.empty] when favorites movies are retrieved successfully and is empty',
        setUp: (){
          when(mockIMovieRepository.getFavouriteMovies()).thenAnswer((_) async =>  Right(List.empty()));
        },
        build: () => bloc,
        act: (MovieWatcherBloc bloc) => bloc.add(const MovieWatcherEvent.onFavorite()),
        expect: () =>  const [ MovieWatcherState.loading(), MovieWatcherState.empty()]);

    blocTest(
        'should emit [MovieWatcherState.loading, MovieWatcherState.error] when favorites movies are not retrieved unsuccessfully',
        setUp: (){
          when(mockIMovieRepository.getFavouriteMovies()).thenAnswer((_) async =>  Left(tInternetFailure));
        },
        build: () => bloc,
        act: (MovieWatcherBloc bloc) => bloc.add(const MovieWatcherEvent.onFavorite()),
        expect: () =>   [const MovieWatcherState.loading(), MovieWatcherState.error(tInternetFailure)]);
  });
}
