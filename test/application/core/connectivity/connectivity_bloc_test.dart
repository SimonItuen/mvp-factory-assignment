import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:moviz/application/core/connectivity/connectivity_bloc.dart';
import 'package:moviz/infrastructure/movie/remote_data_source/i_network_info.dart';

import 'connectivity_bloc_test.mocks.dart';

@GenerateMocks([INetworkInfo, Connectivity])
void main() {
  late ConnectivityBloc bloc;
  late MockINetworkInfo mockINetworkInfo;
  late MockConnectivity mockConnectivity;

  setUp(() {
    mockINetworkInfo = MockINetworkInfo();
    mockConnectivity = MockConnectivity();
    bloc = ConnectivityBloc(mockINetworkInfo, mockConnectivity);
  });

  blocTest('should emit [] when nothing is added',
      build: () => bloc,
      expect: () => const []
  );
group('OnMonitorConnection', () {
  blocTest(
      'should emit [ConnectivityState.disconnected] when it is not connected to a network',
      setUp: () {
        final tNetworkConnectionFuture = Future.value(false);
        when(mockINetworkInfo.isConnected).thenAnswer((_) async=> tNetworkConnectionFuture);
        when(mockConnectivity.onConnectivityChanged).thenAnswer((_) => Stream<ConnectivityResult>.fromIterable([ConnectivityResult.mobile, ConnectivityResult.wifi]));


      },
      act:(ConnectivityBloc bloc)=> bloc.add(const ConnectivityEvent.monitorConnection()),
      build: () => bloc,
      expect: ()=> const [ConnectivityState.disconnected()]
  );
  blocTest(
      'should emit [ConnectivityState.disconnected] when it is connected to a network without internet connection',
      setUp: () {
        final tNetworkConnectionFuture = Future.value(true);
        when(mockINetworkInfo.isConnected).thenAnswer((_) async=> tNetworkConnectionFuture);
        when(mockConnectivity.onConnectivityChanged).thenAnswer((_) => Stream<ConnectivityResult>.fromIterable([ConnectivityResult.none]));


      },
      act:(ConnectivityBloc bloc)=> bloc.add(const ConnectivityEvent.monitorConnection()),
      build: () => bloc,
      expect: ()=> const [ConnectivityState.disconnected()]
  );
  blocTest(
      'should emit [ConnectivityState.connected] when it is connected to a network with internet connection',
      setUp: () {
        final tNetworkConnectionFuture = Future.value(true);
        when(mockINetworkInfo.isConnected).thenAnswer((_) async=> tNetworkConnectionFuture);
        when(mockConnectivity.onConnectivityChanged).thenAnswer((_) => Stream<ConnectivityResult>.fromIterable([ConnectivityResult.mobile, ConnectivityResult.wifi]));


      },
      act:(ConnectivityBloc bloc)=> bloc.add(const ConnectivityEvent.monitorConnection()),
      build: () => bloc,
      expect: ()=> const [ConnectivityState.connected()]
  );


});

}
