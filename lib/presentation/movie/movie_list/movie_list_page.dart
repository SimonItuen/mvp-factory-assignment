import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviz/application/core/connectivity/connectivity_bloc.dart';
import 'package:moviz/application/movie/movie_actor/movie_actor_bloc.dart';
import 'package:moviz/application/movie/movie_search/movie_search_bloc.dart';
import 'package:moviz/application/movie/movie_watcher/movie_watcher_bloc.dart';
import 'package:moviz/domain/movie/movie_object.dart';
import 'package:moviz/injection.dart';
import 'package:moviz/presentation/movie/movie_list/widgets/movie_list_body_widget.dart';
import 'package:moviz/presentation/movie/movie_list/widgets/search_movie_card.dart';

class MovieListPage extends StatelessWidget {
   const MovieListPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<MovieWatcherBloc>(
              create: (context) => getIt<MovieWatcherBloc>()
                ..add(const MovieWatcherEvent.onFavorite())),
          BlocProvider<MovieActorBloc>(
              create: (context) => getIt<MovieActorBloc>()),
        ],
        child: Scaffold(
          backgroundColor: const Color(0xFFF5F5F5),
          appBar: AppBar(
            backgroundColor: const Color(0xFFF5F5F5),
            elevation: 0,
            title: const Text(
              'Moviz',
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              BlocBuilder<MovieWatcherBloc, MovieWatcherState>(
                builder: (context, state) {
                  return IconButton(
                      onPressed: () {
                        showSearch(
                            context: context,
                            delegate: CustomSearchDelegate(
                                BlocProvider.of<MovieWatcherBloc>(context)));
                      },
                      icon: const Icon(
                        Icons.search_rounded,
                        color: Colors.black,
                      ));
                },
              )
            ],
          ),
          body: BlocListener<ConnectivityBloc, ConnectivityState>(
            listener: (context, state) {
              Flushbar(
                message: state.maybeMap(connected:(state)=>'You are online',disconnected:(state)=>'You are offline',orElse: ()=>''),
                flushbarPosition: FlushbarPosition.BOTTOM,
                flushbarStyle: FlushbarStyle.FLOATING,
                backgroundColor: state.maybeMap(connected:(state)=>Colors.green,disconnected:(state)=>Colors.black,orElse: ()=>Colors.transparent),
                duration: state.maybeMap(connected:(state)=>const Duration(seconds: 5),disconnected:(state)=>const Duration(seconds: 5),orElse: ()=>Duration.zero),
                isDismissible: false
              ).show(context);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                   child: Text('Favorites ❤',style: TextStyle(color: Colors.blue[500], fontSize: 20, fontWeight: FontWeight.bold),),
                 ),

                Expanded(child: MovieListBody()),
              ],
            ),
          ),
        ));
  }
}

class CustomSearchDelegate extends SearchDelegate {
  final MovieWatcherBloc _watcherBloc;

  CustomSearchDelegate(this._watcherBloc);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear_rounded),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.length < 2) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Center(
            child: Text(
              "Search term must be longer\nthan one character.",style:  TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
            ),
          )
        ],
      );
    }
    return MultiBlocProvider(
      providers: [
        BlocProvider<MovieSearchBloc>(
            create: (context) => getIt<MovieSearchBloc>()
              ..add(MovieSearchEvent.onSearch(query))),
        BlocProvider<MovieActorBloc>(
            create: (context) => getIt<MovieActorBloc>()),
      ],
      child: BlocBuilder<MovieSearchBloc, MovieSearchState>(
          builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loading: (_) => const Center(child: CircularProgressIndicator()),
            empty: (_) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.hourglass_empty_rounded,
                        color: Colors.amber[400],
                        size: 64,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Text(
                        'We could not match any\n movie with this title',
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
            content: (state) {
              return GridView.builder(
                  padding: const EdgeInsets.all(8),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 4,
                      crossAxisCount: 2,
                      childAspectRatio: 2 / 3),
                  itemCount: state.movies.length,
                  itemBuilder: (BuildContext context, int index) {
                    Movie movie = state.movies[index];
                    return SearchMovieCard(
                      movie: movie,
                      movieWatcherBloc: _watcherBloc,
                    );
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
      }),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return Container();
  }
}
