part of 'connectivity_bloc.dart';

@freezed
class ConnectivityEvent with _$ConnectivityEvent {
  const factory ConnectivityEvent.monitorConnection() = OnMonitorConnection;
  const factory ConnectivityEvent.connectionStatusReceived(bool isDeviceConnected) = OnConnectionStatusReceived;

}
