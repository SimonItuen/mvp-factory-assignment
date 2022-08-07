import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:moviz/application/movie/movie_actor/movie_actor_bloc.dart';
import 'package:moviz/domain/core/failure.dart';
import 'package:moviz/domain/movie/i_movie_repository.dart';
import 'package:moviz/domain/movie/movie_object.dart';

import 'movie_actor_bloc_test.mocks.dart';

@GenerateMocks([IMovieRepository])
void main() {
  late MockIMovieRepository mockIMovieRepository;
  late MovieActorBloc bloc;

  const Movie tMovieObject = Movie(
      id: 'test_id_ff_hf', //ff=> means favorite : false, hf=> means hidden : false, ft=> means favorite : true, ht=> means hidden : true,
      imageUrl: 'http://sample_image',
      title: 'test_title',
      description: 'test_description',
      genres: 'test_genres',
      rating: 1.0,
      favorite: false,
      hidden: false);

  const Movie tFavoriteMovieObject = Movie(
      id: 'test_id_ff_hf', //ff=> means favorite : false, hf=> means hidden : false, ft=> means favorite : true, ht=> means hidden : true,
      imageUrl: 'http://sample_image',
      title: 'test_title',
      description: 'test_description',
      genres: 'test_genres',
      rating: 1.0,
      favorite: false,
      hidden: false);

  Failure tDatabaseFailure = const Failure.objectNotFound();

  setUp(() {
    mockIMovieRepository = MockIMovieRepository();
    bloc = MovieActorBloc(mockIMovieRepository);
  });

  blocTest('should emit [] when nothing is added',
      build: () => bloc, expect: () => const []);

  group('onAddFavoriteMovie', () {
    blocTest(
      'should emit [MovieActorState.actionInProgress, MovieActorState.actionSuccess] when favorite movie is added successfully',
      setUp: (){
        when(mockIMovieRepository.addToFavourite(any)).thenAnswer((_) async =>  const Right(unit));
      },
      build: () => bloc,
      act: (MovieActorBloc bloc)=> bloc.add(const MovieActorEvent.addFavoriteMovie(tMovieObject)),
      expect: () => const [MovieActorState.actionInProgress(), MovieActorState.actionSuccess()]
    );

    blocTest(
      'should emit [MovieActorState.actionInProgress, MovieActorState.actionFailure] when favorite movie is not added',
      setUp: (){
        when(mockIMovieRepository.addToFavourite(any)).thenAnswer((_) async =>  Left(tDatabaseFailure));
      },
      build: () => bloc,
      act: (MovieActorBloc bloc)=> bloc.add(const MovieActorEvent.addFavoriteMovie(tMovieObject)),
      expect: () =>  [const MovieActorState.actionInProgress(), MovieActorState.actionFailure(tDatabaseFailure)]
    );
  });

  group('onRemoveFromFavorite', () {
    blocTest(
        'should emit [MovieActorState.actionInProgress, MovieActorState.actionSuccess] when favorite movie is removed successfully',
        setUp: (){
          when(mockIMovieRepository.removeFromFavorite(any)).thenAnswer((_) async =>  const Right(unit));
        },
        build: () => bloc,
        act: (MovieActorBloc bloc)=> bloc.add(const MovieActorEvent.removeFavoriteMovie(tFavoriteMovieObject)),
        expect: () => const [MovieActorState.actionInProgress(), MovieActorState.actionSuccess()]
    );

    blocTest(
        'should emit [MovieActorState.actionInProgress, MovieActorState.actionFailure] when favorite movie is not removed successfully',
        setUp: (){
          when(mockIMovieRepository.removeFromFavorite(any)).thenAnswer((_) async =>  Left(tDatabaseFailure));
        },
        build: () => bloc,
        act: (MovieActorBloc bloc)=> bloc.add(const MovieActorEvent.removeFavoriteMovie(tMovieObject)),
        expect: () =>  [const MovieActorState.actionInProgress(), MovieActorState.actionFailure(tDatabaseFailure)]
    );
  });

  group('onAddHiddenMovie', () {
    blocTest(
        'should emit [MovieActorState.actionInProgress, MovieActorState.actionSuccess] when movie is hidden successfully',
        setUp: (){
          when(mockIMovieRepository.addToHidden(any)).thenAnswer((_) async =>  const Right(unit));
        },
        build: () => bloc,
        act: (MovieActorBloc bloc)=> bloc.add(const MovieActorEvent.addHiddenMovie(tMovieObject)),
        expect: () => const [MovieActorState.actionInProgress(), MovieActorState.actionSuccess()]
    );

    blocTest(
        'should emit [MovieActorState.actionInProgress, MovieActorState.actionFailure] when movie is not hidden successfully',
        setUp: (){
          when(mockIMovieRepository.addToHidden(any)).thenAnswer((_) async =>  Left(tDatabaseFailure));
        },
        build: () => bloc,
        act: (MovieActorBloc bloc)=> bloc.add(const MovieActorEvent.addHiddenMovie(tMovieObject)),
        expect: () =>  [const MovieActorState.actionInProgress(), MovieActorState.actionFailure(tDatabaseFailure)]
    );
  });
}
