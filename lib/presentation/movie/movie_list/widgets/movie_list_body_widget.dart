import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviz/application/movie/movie_watcher/movie_watcher_bloc.dart';
import 'package:moviz/domain/movie/movie_object.dart';
import 'package:moviz/presentation/movie/movie_list/widgets/movie_card.dart';

class MovieListBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MovieWatcherBloc, MovieWatcherState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.map(
              initial: (_) => Container(),
              loading: (_) => const Center(child: CircularProgressIndicator()),
              empty: (_) => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.local_movies_rounded,
                          color: Colors.blue[200],
                          size: 64,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text(
                          'No Favorite Movies yet',
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
              content: (state) {
                return GridView.builder(
                    padding: const EdgeInsets.all(8),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 4,
                            crossAxisCount: 2,
                            childAspectRatio: 2 / 3),
                    itemCount: state.movies.length,
                    itemBuilder: (BuildContext context, int index) {
                      Movie movie = state.movies[index];
                      return MovieCard(movie: movie);
                    });
              },
              error: (state) {
                return  Center(
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.error_outline_outlined,
                          color: Colors.red[200],
                          size: 64,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(state.failure.map(
                            serverError: (_) =>
                                'Server Error has Occurred,\nplease contact support',
                            clientError: (_) =>
                                'Client Side Error\nTry again in a few minutes',
                            noInternetConnection: (_) =>
                                'You are don\'t have active internet connection',
                            somethingWentWrong: (_) =>
                                'Something went wrong,\nplease reach out to support mail',
                            databaseClosed: (_) =>
                                'Database has not been initialized',
                            objectNotFound: (_) =>
                                'This object was not found in the database',
                            unexpected: (_) => 'Unexpected Error',),style: const TextStyle(fontSize: 16),
                          textAlign: TextAlign.center,),
                      ],
                    ));
              });
        });
  }
}
