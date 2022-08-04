// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../domain/movie/movie_object.dart' as _i5;
import '../movie/movie_details/movie_details_page.dart' as _i2;
import '../movie/movie_list/movie_list_page.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    MovieListRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MovieListPage());
    },
    MovieDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<MovieDetailsRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.MovieDetailsPage(key: args.key, movie: args.movie));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(MovieListRoute.name, path: '/'),
        _i3.RouteConfig(MovieDetailsRoute.name, path: '/movie-details-page')
      ];
}

/// generated route for
/// [_i1.MovieListPage]
class MovieListRoute extends _i3.PageRouteInfo<void> {
  const MovieListRoute() : super(MovieListRoute.name, path: '/');

  static const String name = 'MovieListRoute';
}

/// generated route for
/// [_i2.MovieDetailsPage]
class MovieDetailsRoute extends _i3.PageRouteInfo<MovieDetailsRouteArgs> {
  MovieDetailsRoute({_i4.Key? key, required _i5.Movie movie})
      : super(MovieDetailsRoute.name,
            path: '/movie-details-page',
            args: MovieDetailsRouteArgs(key: key, movie: movie));

  static const String name = 'MovieDetailsRoute';
}

class MovieDetailsRouteArgs {
  const MovieDetailsRouteArgs({this.key, required this.movie});

  final _i4.Key? key;

  final _i5.Movie movie;

  @override
  String toString() {
    return 'MovieDetailsRouteArgs{key: $key, movie: $movie}';
  }
}
