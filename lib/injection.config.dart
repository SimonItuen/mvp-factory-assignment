// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i9;

import 'application/core/connectivity/connectivity_bloc.dart' as _i14;
import 'application/movie/movie_actor/movie_actor_bloc.dart' as _i17;
import 'application/movie/movie_search/movie_search_bloc.dart' as _i18;
import 'application/movie/movie_watcher/movie_watcher_bloc.dart' as _i19;
import 'domain/movie/i_movie_repository.dart' as _i15;
import 'infrastructure/movie/core/injectable_module.dart' as _i20;
import 'infrastructure/movie/local_data_source/hive_database_client.dart'
    as _i6;
import 'infrastructure/movie/local_data_source/i_database_client.dart' as _i5;
import 'infrastructure/movie/local_data_source/i_local_data_source.dart' as _i7;
import 'infrastructure/movie/local_data_source/local_data_source.dart' as _i8;
import 'infrastructure/movie/movie_repository.dart' as _i16;
import 'infrastructure/movie/remote_data_source/i_network_info.dart' as _i10;
import 'infrastructure/movie/remote_data_source/i_remote_data_source.dart'
    as _i12;
import 'infrastructure/movie/remote_data_source/network_info.dart' as _i11;
import 'infrastructure/movie/remote_data_source/remote_data_source.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<_i3.Client>(() => injectableModule.httpClient);
  gh.lazySingleton<_i4.Connectivity>(() => injectableModule.connectivity);
  gh.lazySingleton<_i5.IDatabaseClient<dynamic>>(
      () => _i6.HiveDatabaseClient<dynamic>());
  gh.lazySingleton<_i7.ILocalDataSource>(
      () => _i8.LocalDataSource(get<_i5.IDatabaseClient<dynamic>>()));
  gh.lazySingleton<_i9.InternetConnectionChecker>(
      () => injectableModule.internetConnectionChecker);
  gh.lazySingleton<_i10.INetworkInfo>(
      () => _i11.NetworkInfo(get<_i9.InternetConnectionChecker>()));
  gh.lazySingleton<_i12.IRemoteDataSource>(
      () => _i13.RemoteDataSource(get<_i3.Client>(), get<_i10.INetworkInfo>()));
  gh.factory<_i14.ConnectivityBloc>(() =>
      _i14.ConnectivityBloc(get<_i10.INetworkInfo>(), get<_i4.Connectivity>()));
  gh.lazySingleton<_i15.IMovieRepository>(() => _i16.MovieRepository(
      get<_i12.IRemoteDataSource>(), get<_i7.ILocalDataSource>()));
  gh.factory<_i17.MovieActorBloc>(
      () => _i17.MovieActorBloc(get<_i15.IMovieRepository>()));
  gh.factory<_i18.MovieSearchBloc>(
      () => _i18.MovieSearchBloc(get<_i15.IMovieRepository>()));
  gh.factory<_i19.MovieWatcherBloc>(
      () => _i19.MovieWatcherBloc(get<_i15.IMovieRepository>()));
  return get;
}

class _$InjectableModule extends _i20.InjectableModule {}
