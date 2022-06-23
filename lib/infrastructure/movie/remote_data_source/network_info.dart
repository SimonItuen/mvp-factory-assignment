import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:moviz/infrastructure/movie/remote_data_source/i_network_info.dart';

@LazySingleton(as: INetworkInfo)
class NetworkInfo extends INetworkInfo {
  final InternetConnectionChecker _internetConnectionChecker;

  NetworkInfo(this._internetConnectionChecker);

  @override
  // TODO: implement isConnected
  Future<bool> get isConnected => _internetConnectionChecker.hasConnection;
}
