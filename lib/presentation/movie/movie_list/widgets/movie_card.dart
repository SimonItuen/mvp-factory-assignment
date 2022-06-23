import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviz/application/movie/movie_actor/movie_actor_bloc.dart';
import 'package:moviz/application/movie/movie_watcher/movie_watcher_bloc.dart';
import 'package:moviz/domain/movie/movie_object.dart';
import 'package:moviz/presentation/routes/app_router.gr.dart';

enum MenuItem { favorite, hide }

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        InkWell(
          onTap: (){
            AutoRouter.of(context).push(MovieDetailsRoute(movie: movie));
          },
          child: Card(
            key: ObjectKey(movie.id),
            color: movie.imageUrl !=
                    'https://imdb-api.com/images/original/nopicture.jpg'
                ? null
                : Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: movie.imageUrl !=
                    'https://imdb-api.com/images/original/nopicture.jpg'
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: CachedNetworkImage(
                      imageUrl: movie.imageUrl,
                      fit: BoxFit.fitWidth,
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                        child: Text(
                      movie.title,
                      maxLines: 4,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    )),
                  ),
          ),
        ),
        PopupMenuButton<MenuItem>(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            onSelected: (MenuItem item) {
              if (item == MenuItem.favorite) {
                if (movie.favorite != true) {
                  BlocProvider.of<MovieActorBloc>(context)
                      .add(AddFavoriteMovie(movie));
                } else {
                  BlocProvider.of<MovieActorBloc>(context)
                      .add(RemoveFavoriteMovie(movie));
                }
              } else {
                BlocProvider.of<MovieActorBloc>(context)
                    .add(AddHiddenMovie(movie));
              }
              BlocProvider.of<MovieWatcherBloc>(context)
                  .add(const MovieWatcherEvent.onFavorite());
            },
            icon: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(0.5),
              ),
              child: const Icon(
                Icons.more_vert_rounded,
                color: Colors.white,
              ),
            ),
            itemBuilder: (BuildContext context) => <PopupMenuEntry<MenuItem>>[
                  PopupMenuItem<MenuItem>(
                    value: MenuItem.favorite,
                    child: Row(
                      children: [
                        Icon(movie.favorite != true
                            ? Icons.favorite_rounded
                            : Icons.favorite_border_rounded),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(movie.favorite != true ? 'Favourite' : 'Remove'),
                      ],
                    ),
                  ),
                  PopupMenuItem<MenuItem>(
                    value: MenuItem.hide,
                    child: Row(
                      children: const [
                        Icon(Icons.visibility_off_rounded),
                        SizedBox(
                          width: 6,
                        ),
                        Text('Hide'),
                      ],
                    ),
                  ),
                ]),
      ],
    );
  }
}
