import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviz/domain/core/failure.dart';
import 'package:moviz/infrastructure/movie/remote_data_source/i_network_info.dart';

part 'connectivity_bloc.freezed.dart';
part 'connectivity_event.dart';
part 'connectivity_state.dart';

@injectable
class ConnectivityBloc extends Bloc<ConnectivityEvent, ConnectivityState> {
  final INetworkInfo _networkInfo;
  final Connectivity _connectivity;
  var _subscription;

  ConnectivityBloc(this._networkInfo, this._connectivity)
      : super(const ConnectivityState.initial()) {
    on<OnMonitorConnection>((event, emit) async {

      await _subscription?.cancel();
      _subscription = _connectivity.onConnectivityChanged.listen((
          ConnectivityResult result) async {
        bool deviceConnected = false;
        if (result != ConnectivityResult.none) {
          deviceConnected = await _networkInfo.isConnected;
        }
        add(ConnectivityEvent.connectionStatusReceived(deviceConnected));
      });
    });
    on<OnConnectionStatusReceived>((event, emit) {
      if (event.isDeviceConnected) {
        emit(const ConnectivityState.connected());
      } else {
        emit(const ConnectivityState.disconnected());
      }
    });
  }
}
