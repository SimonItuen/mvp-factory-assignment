import 'package:auto_route/annotations.dart';
import 'package:moviz/presentation/movie/movie_details/movie_details_page.dart';
import 'package:moviz/presentation/movie/movie_list/movie_list_page.dart';
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: MovieListPage, initial: true),
    AutoRoute(page: MovieDetailsPage),
  ]

)
class $AppRouter{}