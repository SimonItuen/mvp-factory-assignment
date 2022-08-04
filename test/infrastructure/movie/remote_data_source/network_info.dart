
import 'package:flutter_test/flutter_test.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:moviz/infrastructure/movie/remote_data_source/i_network_info.dart';
import 'package:moviz/infrastructure/movie/remote_data_source/network_info.dart';

import 'network_info.mocks.dart';

@GenerateMocks([InternetConnectionChecker])
void main(){
  late MockInternetConnectionChecker mockInternetConnectionChecker;
  late NetworkInfo networkInfo;

  setUp(() {
    mockInternetConnectionChecker = MockInternetConnectionChecker();
    networkInfo = NetworkInfo(mockInternetConnectionChecker);
  });

  group('isConnected', () {
    test(
        'should forward call to InternetConnectionChecker.hasConnection',
        () async {
        // arrange
          final tHasConnectionFuture = Future.value(true);
          when(mockInternetConnectionChecker.hasConnection).thenAnswer((_) => tHasConnectionFuture);

        // act
        final result = networkInfo.isConnected;
        // assert
        verify(mockInternetConnectionChecker.hasConnection);
        expect(result, tHasConnectionFuture);
      }
    );

  });
}