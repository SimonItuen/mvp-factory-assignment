import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

@module
abstract class InjectableModule {
  @LazySingleton()
  http.Client get httpClient => http.Client();

  @LazySingleton()
  InternetConnectionChecker get internetConnectionChecker =>
      InternetConnectionChecker();

  @LazySingleton()
  Connectivity get connectivity => Connectivity();
}
