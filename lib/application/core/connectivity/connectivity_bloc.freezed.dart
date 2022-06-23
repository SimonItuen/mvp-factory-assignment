// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'connectivity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectivityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() monitorConnection,
    required TResult Function(bool isDeviceConnected) connectionStatusReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? monitorConnection,
    TResult Function(bool isDeviceConnected)? connectionStatusReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? monitorConnection,
    TResult Function(bool isDeviceConnected)? connectionStatusReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnMonitorConnection value) monitorConnection,
    required TResult Function(OnConnectionStatusReceived value)
        connectionStatusReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnMonitorConnection value)? monitorConnection,
    TResult Function(OnConnectionStatusReceived value)?
        connectionStatusReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnMonitorConnection value)? monitorConnection,
    TResult Function(OnConnectionStatusReceived value)?
        connectionStatusReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectivityEventCopyWith<$Res> {
  factory $ConnectivityEventCopyWith(
          ConnectivityEvent value, $Res Function(ConnectivityEvent) then) =
      _$ConnectivityEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectivityEventCopyWithImpl<$Res>
    implements $ConnectivityEventCopyWith<$Res> {
  _$ConnectivityEventCopyWithImpl(this._value, this._then);

  final ConnectivityEvent _value;
  // ignore: unused_field
  final $Res Function(ConnectivityEvent) _then;
}

/// @nodoc
abstract class _$$OnMonitorConnectionCopyWith<$Res> {
  factory _$$OnMonitorConnectionCopyWith(_$OnMonitorConnection value,
          $Res Function(_$OnMonitorConnection) then) =
      __$$OnMonitorConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnMonitorConnectionCopyWithImpl<$Res>
    extends _$ConnectivityEventCopyWithImpl<$Res>
    implements _$$OnMonitorConnectionCopyWith<$Res> {
  __$$OnMonitorConnectionCopyWithImpl(
      _$OnMonitorConnection _value, $Res Function(_$OnMonitorConnection) _then)
      : super(_value, (v) => _then(v as _$OnMonitorConnection));

  @override
  _$OnMonitorConnection get _value => super._value as _$OnMonitorConnection;
}

/// @nodoc

class _$OnMonitorConnection implements OnMonitorConnection {
  const _$OnMonitorConnection();

  @override
  String toString() {
    return 'ConnectivityEvent.monitorConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnMonitorConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() monitorConnection,
    required TResult Function(bool isDeviceConnected) connectionStatusReceived,
  }) {
    return monitorConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? monitorConnection,
    TResult Function(bool isDeviceConnected)? connectionStatusReceived,
  }) {
    return monitorConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? monitorConnection,
    TResult Function(bool isDeviceConnected)? connectionStatusReceived,
    required TResult orElse(),
  }) {
    if (monitorConnection != null) {
      return monitorConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnMonitorConnection value) monitorConnection,
    required TResult Function(OnConnectionStatusReceived value)
        connectionStatusReceived,
  }) {
    return monitorConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnMonitorConnection value)? monitorConnection,
    TResult Function(OnConnectionStatusReceived value)?
        connectionStatusReceived,
  }) {
    return monitorConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnMonitorConnection value)? monitorConnection,
    TResult Function(OnConnectionStatusReceived value)?
        connectionStatusReceived,
    required TResult orElse(),
  }) {
    if (monitorConnection != null) {
      return monitorConnection(this);
    }
    return orElse();
  }
}

abstract class OnMonitorConnection implements ConnectivityEvent {
  const factory OnMonitorConnection() = _$OnMonitorConnection;
}

/// @nodoc
abstract class _$$OnConnectionStatusReceivedCopyWith<$Res> {
  factory _$$OnConnectionStatusReceivedCopyWith(
          _$OnConnectionStatusReceived value,
          $Res Function(_$OnConnectionStatusReceived) then) =
      __$$OnConnectionStatusReceivedCopyWithImpl<$Res>;
  $Res call({bool isDeviceConnected});
}

/// @nodoc
class __$$OnConnectionStatusReceivedCopyWithImpl<$Res>
    extends _$ConnectivityEventCopyWithImpl<$Res>
    implements _$$OnConnectionStatusReceivedCopyWith<$Res> {
  __$$OnConnectionStatusReceivedCopyWithImpl(
      _$OnConnectionStatusReceived _value,
      $Res Function(_$OnConnectionStatusReceived) _then)
      : super(_value, (v) => _then(v as _$OnConnectionStatusReceived));

  @override
  _$OnConnectionStatusReceived get _value =>
      super._value as _$OnConnectionStatusReceived;

  @override
  $Res call({
    Object? isDeviceConnected = freezed,
  }) {
    return _then(_$OnConnectionStatusReceived(
      isDeviceConnected == freezed
          ? _value.isDeviceConnected
          : isDeviceConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OnConnectionStatusReceived implements OnConnectionStatusReceived {
  const _$OnConnectionStatusReceived(this.isDeviceConnected);

  @override
  final bool isDeviceConnected;

  @override
  String toString() {
    return 'ConnectivityEvent.connectionStatusReceived(isDeviceConnected: $isDeviceConnected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnConnectionStatusReceived &&
            const DeepCollectionEquality()
                .equals(other.isDeviceConnected, isDeviceConnected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isDeviceConnected));

  @JsonKey(ignore: true)
  @override
  _$$OnConnectionStatusReceivedCopyWith<_$OnConnectionStatusReceived>
      get copyWith => __$$OnConnectionStatusReceivedCopyWithImpl<
          _$OnConnectionStatusReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() monitorConnection,
    required TResult Function(bool isDeviceConnected) connectionStatusReceived,
  }) {
    return connectionStatusReceived(isDeviceConnected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? monitorConnection,
    TResult Function(bool isDeviceConnected)? connectionStatusReceived,
  }) {
    return connectionStatusReceived?.call(isDeviceConnected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? monitorConnection,
    TResult Function(bool isDeviceConnected)? connectionStatusReceived,
    required TResult orElse(),
  }) {
    if (connectionStatusReceived != null) {
      return connectionStatusReceived(isDeviceConnected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnMonitorConnection value) monitorConnection,
    required TResult Function(OnConnectionStatusReceived value)
        connectionStatusReceived,
  }) {
    return connectionStatusReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnMonitorConnection value)? monitorConnection,
    TResult Function(OnConnectionStatusReceived value)?
        connectionStatusReceived,
  }) {
    return connectionStatusReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnMonitorConnection value)? monitorConnection,
    TResult Function(OnConnectionStatusReceived value)?
        connectionStatusReceived,
    required TResult orElse(),
  }) {
    if (connectionStatusReceived != null) {
      return connectionStatusReceived(this);
    }
    return orElse();
  }
}

abstract class OnConnectionStatusReceived implements ConnectivityEvent {
  const factory OnConnectionStatusReceived(final bool isDeviceConnected) =
      _$OnConnectionStatusReceived;

  bool get isDeviceConnected => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$OnConnectionStatusReceivedCopyWith<_$OnConnectionStatusReceived>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConnectivityState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnected value) disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectivityStateCopyWith<$Res> {
  factory $ConnectivityStateCopyWith(
          ConnectivityState value, $Res Function(ConnectivityState) then) =
      _$ConnectivityStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectivityStateCopyWithImpl<$Res>
    implements $ConnectivityStateCopyWith<$Res> {
  _$ConnectivityStateCopyWithImpl(this._value, this._then);

  final ConnectivityState _value;
  // ignore: unused_field
  final $Res Function(ConnectivityState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ConnectivityState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnected value) disconnected,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ConnectivityState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ConnectedCopyWith<$Res> {
  factory _$$_ConnectedCopyWith(
          _$_Connected value, $Res Function(_$_Connected) then) =
      __$$_ConnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ConnectedCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res>
    implements _$$_ConnectedCopyWith<$Res> {
  __$$_ConnectedCopyWithImpl(
      _$_Connected _value, $Res Function(_$_Connected) _then)
      : super(_value, (v) => _then(v as _$_Connected));

  @override
  _$_Connected get _value => super._value as _$_Connected;
}

/// @nodoc

class _$_Connected implements _Connected {
  const _$_Connected();

  @override
  String toString() {
    return 'ConnectivityState.connected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Connected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
  }) {
    return connected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnected value) disconnected,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class _Connected implements ConnectivityState {
  const factory _Connected() = _$_Connected;
}

/// @nodoc
abstract class _$$_DisconnectedCopyWith<$Res> {
  factory _$$_DisconnectedCopyWith(
          _$_Disconnected value, $Res Function(_$_Disconnected) then) =
      __$$_DisconnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DisconnectedCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res>
    implements _$$_DisconnectedCopyWith<$Res> {
  __$$_DisconnectedCopyWithImpl(
      _$_Disconnected _value, $Res Function(_$_Disconnected) _then)
      : super(_value, (v) => _then(v as _$_Disconnected));

  @override
  _$_Disconnected get _value => super._value as _$_Disconnected;
}

/// @nodoc

class _$_Disconnected implements _Disconnected {
  const _$_Disconnected();

  @override
  String toString() {
    return 'ConnectivityState.disconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Disconnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connected,
    required TResult Function() disconnected,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
  }) {
    return disconnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connected,
    TResult Function()? disconnected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnected value) disconnected,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class _Disconnected implements ConnectivityState {
  const factory _Disconnected() = _$_Disconnected;
}
