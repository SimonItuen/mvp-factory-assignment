// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode) serverError,
    required TResult Function(int statusCode) clientError,
    required TResult Function() noInternetConnection,
    required TResult Function() somethingWentWrong,
    required TResult Function() databaseClosed,
    required TResult Function() objectNotFound,
    required TResult Function() unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int statusCode)? serverError,
    TResult Function(int statusCode)? clientError,
    TResult Function()? noInternetConnection,
    TResult Function()? somethingWentWrong,
    TResult Function()? databaseClosed,
    TResult Function()? objectNotFound,
    TResult Function()? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode)? serverError,
    TResult Function(int statusCode)? clientError,
    TResult Function()? noInternetConnection,
    TResult Function()? somethingWentWrong,
    TResult Function()? databaseClosed,
    TResult Function()? objectNotFound,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ClientError value) clientError,
    required TResult Function(_noInternetConnection value) noInternetConnection,
    required TResult Function(_SomethingWentWrong value) somethingWentWrong,
    required TResult Function(_DatabaseClosed value) databaseClosed,
    required TResult Function(_ObjectNotFound value) objectNotFound,
    required TResult Function(_unexpected value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ClientError value)? clientError,
    TResult Function(_noInternetConnection value)? noInternetConnection,
    TResult Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult Function(_DatabaseClosed value)? databaseClosed,
    TResult Function(_ObjectNotFound value)? objectNotFound,
    TResult Function(_unexpected value)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ClientError value)? clientError,
    TResult Function(_noInternetConnection value)? noInternetConnection,
    TResult Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult Function(_DatabaseClosed value)? databaseClosed,
    TResult Function(_ObjectNotFound value)? objectNotFound,
    TResult Function(_unexpected value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<$Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError value, $Res Function(_$_ServerError) then) =
      __$$_ServerErrorCopyWithImpl<$Res>;
  $Res call({int statusCode});
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$_ServerErrorCopyWith<$Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError _value, $Res Function(_$_ServerError) _then)
      : super(_value, (v) => _then(v as _$_ServerError));

  @override
  _$_ServerError get _value => super._value as _$_ServerError;

  @override
  $Res call({
    Object? statusCode = freezed,
  }) {
    return _then(_$_ServerError(
      statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError(this.statusCode);

  @override
  final int statusCode;

  @override
  String toString() {
    return 'Failure.serverError(statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerError &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(statusCode));

  @JsonKey(ignore: true)
  @override
  _$$_ServerErrorCopyWith<_$_ServerError> get copyWith =>
      __$$_ServerErrorCopyWithImpl<_$_ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode) serverError,
    required TResult Function(int statusCode) clientError,
    required TResult Function() noInternetConnection,
    required TResult Function() somethingWentWrong,
    required TResult Function() databaseClosed,
    required TResult Function() objectNotFound,
    required TResult Function() unexpected,
  }) {
    return serverError(statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int statusCode)? serverError,
    TResult Function(int statusCode)? clientError,
    TResult Function()? noInternetConnection,
    TResult Function()? somethingWentWrong,
    TResult Function()? databaseClosed,
    TResult Function()? objectNotFound,
    TResult Function()? unexpected,
  }) {
    return serverError?.call(statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode)? serverError,
    TResult Function(int statusCode)? clientError,
    TResult Function()? noInternetConnection,
    TResult Function()? somethingWentWrong,
    TResult Function()? databaseClosed,
    TResult Function()? objectNotFound,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ClientError value) clientError,
    required TResult Function(_noInternetConnection value) noInternetConnection,
    required TResult Function(_SomethingWentWrong value) somethingWentWrong,
    required TResult Function(_DatabaseClosed value) databaseClosed,
    required TResult Function(_ObjectNotFound value) objectNotFound,
    required TResult Function(_unexpected value) unexpected,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ClientError value)? clientError,
    TResult Function(_noInternetConnection value)? noInternetConnection,
    TResult Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult Function(_DatabaseClosed value)? databaseClosed,
    TResult Function(_ObjectNotFound value)? objectNotFound,
    TResult Function(_unexpected value)? unexpected,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ClientError value)? clientError,
    TResult Function(_noInternetConnection value)? noInternetConnection,
    TResult Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult Function(_DatabaseClosed value)? databaseClosed,
    TResult Function(_ObjectNotFound value)? objectNotFound,
    TResult Function(_unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements Failure {
  const factory _ServerError(final int statusCode) = _$_ServerError;

  int get statusCode;
  @JsonKey(ignore: true)
  _$$_ServerErrorCopyWith<_$_ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClientErrorCopyWith<$Res> {
  factory _$$_ClientErrorCopyWith(
          _$_ClientError value, $Res Function(_$_ClientError) then) =
      __$$_ClientErrorCopyWithImpl<$Res>;
  $Res call({int statusCode});
}

/// @nodoc
class __$$_ClientErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$_ClientErrorCopyWith<$Res> {
  __$$_ClientErrorCopyWithImpl(
      _$_ClientError _value, $Res Function(_$_ClientError) _then)
      : super(_value, (v) => _then(v as _$_ClientError));

  @override
  _$_ClientError get _value => super._value as _$_ClientError;

  @override
  $Res call({
    Object? statusCode = freezed,
  }) {
    return _then(_$_ClientError(
      statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ClientError implements _ClientError {
  const _$_ClientError(this.statusCode);

  @override
  final int statusCode;

  @override
  String toString() {
    return 'Failure.clientError(statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientError &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(statusCode));

  @JsonKey(ignore: true)
  @override
  _$$_ClientErrorCopyWith<_$_ClientError> get copyWith =>
      __$$_ClientErrorCopyWithImpl<_$_ClientError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode) serverError,
    required TResult Function(int statusCode) clientError,
    required TResult Function() noInternetConnection,
    required TResult Function() somethingWentWrong,
    required TResult Function() databaseClosed,
    required TResult Function() objectNotFound,
    required TResult Function() unexpected,
  }) {
    return clientError(statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int statusCode)? serverError,
    TResult Function(int statusCode)? clientError,
    TResult Function()? noInternetConnection,
    TResult Function()? somethingWentWrong,
    TResult Function()? databaseClosed,
    TResult Function()? objectNotFound,
    TResult Function()? unexpected,
  }) {
    return clientError?.call(statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode)? serverError,
    TResult Function(int statusCode)? clientError,
    TResult Function()? noInternetConnection,
    TResult Function()? somethingWentWrong,
    TResult Function()? databaseClosed,
    TResult Function()? objectNotFound,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (clientError != null) {
      return clientError(statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ClientError value) clientError,
    required TResult Function(_noInternetConnection value) noInternetConnection,
    required TResult Function(_SomethingWentWrong value) somethingWentWrong,
    required TResult Function(_DatabaseClosed value) databaseClosed,
    required TResult Function(_ObjectNotFound value) objectNotFound,
    required TResult Function(_unexpected value) unexpected,
  }) {
    return clientError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ClientError value)? clientError,
    TResult Function(_noInternetConnection value)? noInternetConnection,
    TResult Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult Function(_DatabaseClosed value)? databaseClosed,
    TResult Function(_ObjectNotFound value)? objectNotFound,
    TResult Function(_unexpected value)? unexpected,
  }) {
    return clientError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ClientError value)? clientError,
    TResult Function(_noInternetConnection value)? noInternetConnection,
    TResult Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult Function(_DatabaseClosed value)? databaseClosed,
    TResult Function(_ObjectNotFound value)? objectNotFound,
    TResult Function(_unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (clientError != null) {
      return clientError(this);
    }
    return orElse();
  }
}

abstract class _ClientError implements Failure {
  const factory _ClientError(final int statusCode) = _$_ClientError;

  int get statusCode;
  @JsonKey(ignore: true)
  _$$_ClientErrorCopyWith<_$_ClientError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_noInternetConnectionCopyWith<$Res> {
  factory _$$_noInternetConnectionCopyWith(_$_noInternetConnection value,
          $Res Function(_$_noInternetConnection) then) =
      __$$_noInternetConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_noInternetConnectionCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements _$$_noInternetConnectionCopyWith<$Res> {
  __$$_noInternetConnectionCopyWithImpl(_$_noInternetConnection _value,
      $Res Function(_$_noInternetConnection) _then)
      : super(_value, (v) => _then(v as _$_noInternetConnection));

  @override
  _$_noInternetConnection get _value => super._value as _$_noInternetConnection;
}

/// @nodoc

class _$_noInternetConnection implements _noInternetConnection {
  const _$_noInternetConnection();

  @override
  String toString() {
    return 'Failure.noInternetConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_noInternetConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode) serverError,
    required TResult Function(int statusCode) clientError,
    required TResult Function() noInternetConnection,
    required TResult Function() somethingWentWrong,
    required TResult Function() databaseClosed,
    required TResult Function() objectNotFound,
    required TResult Function() unexpected,
  }) {
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int statusCode)? serverError,
    TResult Function(int statusCode)? clientError,
    TResult Function()? noInternetConnection,
    TResult Function()? somethingWentWrong,
    TResult Function()? databaseClosed,
    TResult Function()? objectNotFound,
    TResult Function()? unexpected,
  }) {
    return noInternetConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode)? serverError,
    TResult Function(int statusCode)? clientError,
    TResult Function()? noInternetConnection,
    TResult Function()? somethingWentWrong,
    TResult Function()? databaseClosed,
    TResult Function()? objectNotFound,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ClientError value) clientError,
    required TResult Function(_noInternetConnection value) noInternetConnection,
    required TResult Function(_SomethingWentWrong value) somethingWentWrong,
    required TResult Function(_DatabaseClosed value) databaseClosed,
    required TResult Function(_ObjectNotFound value) objectNotFound,
    required TResult Function(_unexpected value) unexpected,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ClientError value)? clientError,
    TResult Function(_noInternetConnection value)? noInternetConnection,
    TResult Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult Function(_DatabaseClosed value)? databaseClosed,
    TResult Function(_ObjectNotFound value)? objectNotFound,
    TResult Function(_unexpected value)? unexpected,
  }) {
    return noInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ClientError value)? clientError,
    TResult Function(_noInternetConnection value)? noInternetConnection,
    TResult Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult Function(_DatabaseClosed value)? databaseClosed,
    TResult Function(_ObjectNotFound value)? objectNotFound,
    TResult Function(_unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class _noInternetConnection implements Failure {
  const factory _noInternetConnection() = _$_noInternetConnection;
}

/// @nodoc
abstract class _$$_SomethingWentWrongCopyWith<$Res> {
  factory _$$_SomethingWentWrongCopyWith(_$_SomethingWentWrong value,
          $Res Function(_$_SomethingWentWrong) then) =
      __$$_SomethingWentWrongCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SomethingWentWrongCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements _$$_SomethingWentWrongCopyWith<$Res> {
  __$$_SomethingWentWrongCopyWithImpl(
      _$_SomethingWentWrong _value, $Res Function(_$_SomethingWentWrong) _then)
      : super(_value, (v) => _then(v as _$_SomethingWentWrong));

  @override
  _$_SomethingWentWrong get _value => super._value as _$_SomethingWentWrong;
}

/// @nodoc

class _$_SomethingWentWrong implements _SomethingWentWrong {
  const _$_SomethingWentWrong();

  @override
  String toString() {
    return 'Failure.somethingWentWrong()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SomethingWentWrong);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode) serverError,
    required TResult Function(int statusCode) clientError,
    required TResult Function() noInternetConnection,
    required TResult Function() somethingWentWrong,
    required TResult Function() databaseClosed,
    required TResult Function() objectNotFound,
    required TResult Function() unexpected,
  }) {
    return somethingWentWrong();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int statusCode)? serverError,
    TResult Function(int statusCode)? clientError,
    TResult Function()? noInternetConnection,
    TResult Function()? somethingWentWrong,
    TResult Function()? databaseClosed,
    TResult Function()? objectNotFound,
    TResult Function()? unexpected,
  }) {
    return somethingWentWrong?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode)? serverError,
    TResult Function(int statusCode)? clientError,
    TResult Function()? noInternetConnection,
    TResult Function()? somethingWentWrong,
    TResult Function()? databaseClosed,
    TResult Function()? objectNotFound,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (somethingWentWrong != null) {
      return somethingWentWrong();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ClientError value) clientError,
    required TResult Function(_noInternetConnection value) noInternetConnection,
    required TResult Function(_SomethingWentWrong value) somethingWentWrong,
    required TResult Function(_DatabaseClosed value) databaseClosed,
    required TResult Function(_ObjectNotFound value) objectNotFound,
    required TResult Function(_unexpected value) unexpected,
  }) {
    return somethingWentWrong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ClientError value)? clientError,
    TResult Function(_noInternetConnection value)? noInternetConnection,
    TResult Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult Function(_DatabaseClosed value)? databaseClosed,
    TResult Function(_ObjectNotFound value)? objectNotFound,
    TResult Function(_unexpected value)? unexpected,
  }) {
    return somethingWentWrong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ClientError value)? clientError,
    TResult Function(_noInternetConnection value)? noInternetConnection,
    TResult Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult Function(_DatabaseClosed value)? databaseClosed,
    TResult Function(_ObjectNotFound value)? objectNotFound,
    TResult Function(_unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (somethingWentWrong != null) {
      return somethingWentWrong(this);
    }
    return orElse();
  }
}

abstract class _SomethingWentWrong implements Failure {
  const factory _SomethingWentWrong() = _$_SomethingWentWrong;
}

/// @nodoc
abstract class _$$_DatabaseClosedCopyWith<$Res> {
  factory _$$_DatabaseClosedCopyWith(
          _$_DatabaseClosed value, $Res Function(_$_DatabaseClosed) then) =
      __$$_DatabaseClosedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DatabaseClosedCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$_DatabaseClosedCopyWith<$Res> {
  __$$_DatabaseClosedCopyWithImpl(
      _$_DatabaseClosed _value, $Res Function(_$_DatabaseClosed) _then)
      : super(_value, (v) => _then(v as _$_DatabaseClosed));

  @override
  _$_DatabaseClosed get _value => super._value as _$_DatabaseClosed;
}

/// @nodoc

class _$_DatabaseClosed implements _DatabaseClosed {
  const _$_DatabaseClosed();

  @override
  String toString() {
    return 'Failure.databaseClosed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DatabaseClosed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode) serverError,
    required TResult Function(int statusCode) clientError,
    required TResult Function() noInternetConnection,
    required TResult Function() somethingWentWrong,
    required TResult Function() databaseClosed,
    required TResult Function() objectNotFound,
    required TResult Function() unexpected,
  }) {
    return databaseClosed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int statusCode)? serverError,
    TResult Function(int statusCode)? clientError,
    TResult Function()? noInternetConnection,
    TResult Function()? somethingWentWrong,
    TResult Function()? databaseClosed,
    TResult Function()? objectNotFound,
    TResult Function()? unexpected,
  }) {
    return databaseClosed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode)? serverError,
    TResult Function(int statusCode)? clientError,
    TResult Function()? noInternetConnection,
    TResult Function()? somethingWentWrong,
    TResult Function()? databaseClosed,
    TResult Function()? objectNotFound,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (databaseClosed != null) {
      return databaseClosed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ClientError value) clientError,
    required TResult Function(_noInternetConnection value) noInternetConnection,
    required TResult Function(_SomethingWentWrong value) somethingWentWrong,
    required TResult Function(_DatabaseClosed value) databaseClosed,
    required TResult Function(_ObjectNotFound value) objectNotFound,
    required TResult Function(_unexpected value) unexpected,
  }) {
    return databaseClosed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ClientError value)? clientError,
    TResult Function(_noInternetConnection value)? noInternetConnection,
    TResult Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult Function(_DatabaseClosed value)? databaseClosed,
    TResult Function(_ObjectNotFound value)? objectNotFound,
    TResult Function(_unexpected value)? unexpected,
  }) {
    return databaseClosed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ClientError value)? clientError,
    TResult Function(_noInternetConnection value)? noInternetConnection,
    TResult Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult Function(_DatabaseClosed value)? databaseClosed,
    TResult Function(_ObjectNotFound value)? objectNotFound,
    TResult Function(_unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (databaseClosed != null) {
      return databaseClosed(this);
    }
    return orElse();
  }
}

abstract class _DatabaseClosed implements Failure {
  const factory _DatabaseClosed() = _$_DatabaseClosed;
}

/// @nodoc
abstract class _$$_ObjectNotFoundCopyWith<$Res> {
  factory _$$_ObjectNotFoundCopyWith(
          _$_ObjectNotFound value, $Res Function(_$_ObjectNotFound) then) =
      __$$_ObjectNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ObjectNotFoundCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$_ObjectNotFoundCopyWith<$Res> {
  __$$_ObjectNotFoundCopyWithImpl(
      _$_ObjectNotFound _value, $Res Function(_$_ObjectNotFound) _then)
      : super(_value, (v) => _then(v as _$_ObjectNotFound));

  @override
  _$_ObjectNotFound get _value => super._value as _$_ObjectNotFound;
}

/// @nodoc

class _$_ObjectNotFound implements _ObjectNotFound {
  const _$_ObjectNotFound();

  @override
  String toString() {
    return 'Failure.objectNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ObjectNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode) serverError,
    required TResult Function(int statusCode) clientError,
    required TResult Function() noInternetConnection,
    required TResult Function() somethingWentWrong,
    required TResult Function() databaseClosed,
    required TResult Function() objectNotFound,
    required TResult Function() unexpected,
  }) {
    return objectNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int statusCode)? serverError,
    TResult Function(int statusCode)? clientError,
    TResult Function()? noInternetConnection,
    TResult Function()? somethingWentWrong,
    TResult Function()? databaseClosed,
    TResult Function()? objectNotFound,
    TResult Function()? unexpected,
  }) {
    return objectNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode)? serverError,
    TResult Function(int statusCode)? clientError,
    TResult Function()? noInternetConnection,
    TResult Function()? somethingWentWrong,
    TResult Function()? databaseClosed,
    TResult Function()? objectNotFound,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (objectNotFound != null) {
      return objectNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ClientError value) clientError,
    required TResult Function(_noInternetConnection value) noInternetConnection,
    required TResult Function(_SomethingWentWrong value) somethingWentWrong,
    required TResult Function(_DatabaseClosed value) databaseClosed,
    required TResult Function(_ObjectNotFound value) objectNotFound,
    required TResult Function(_unexpected value) unexpected,
  }) {
    return objectNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ClientError value)? clientError,
    TResult Function(_noInternetConnection value)? noInternetConnection,
    TResult Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult Function(_DatabaseClosed value)? databaseClosed,
    TResult Function(_ObjectNotFound value)? objectNotFound,
    TResult Function(_unexpected value)? unexpected,
  }) {
    return objectNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ClientError value)? clientError,
    TResult Function(_noInternetConnection value)? noInternetConnection,
    TResult Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult Function(_DatabaseClosed value)? databaseClosed,
    TResult Function(_ObjectNotFound value)? objectNotFound,
    TResult Function(_unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (objectNotFound != null) {
      return objectNotFound(this);
    }
    return orElse();
  }
}

abstract class _ObjectNotFound implements Failure {
  const factory _ObjectNotFound() = _$_ObjectNotFound;
}

/// @nodoc
abstract class _$$_unexpectedCopyWith<$Res> {
  factory _$$_unexpectedCopyWith(
          _$_unexpected value, $Res Function(_$_unexpected) then) =
      __$$_unexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_unexpectedCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$_unexpectedCopyWith<$Res> {
  __$$_unexpectedCopyWithImpl(
      _$_unexpected _value, $Res Function(_$_unexpected) _then)
      : super(_value, (v) => _then(v as _$_unexpected));

  @override
  _$_unexpected get _value => super._value as _$_unexpected;
}

/// @nodoc

class _$_unexpected implements _unexpected {
  const _$_unexpected();

  @override
  String toString() {
    return 'Failure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int statusCode) serverError,
    required TResult Function(int statusCode) clientError,
    required TResult Function() noInternetConnection,
    required TResult Function() somethingWentWrong,
    required TResult Function() databaseClosed,
    required TResult Function() objectNotFound,
    required TResult Function() unexpected,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int statusCode)? serverError,
    TResult Function(int statusCode)? clientError,
    TResult Function()? noInternetConnection,
    TResult Function()? somethingWentWrong,
    TResult Function()? databaseClosed,
    TResult Function()? objectNotFound,
    TResult Function()? unexpected,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int statusCode)? serverError,
    TResult Function(int statusCode)? clientError,
    TResult Function()? noInternetConnection,
    TResult Function()? somethingWentWrong,
    TResult Function()? databaseClosed,
    TResult Function()? objectNotFound,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ClientError value) clientError,
    required TResult Function(_noInternetConnection value) noInternetConnection,
    required TResult Function(_SomethingWentWrong value) somethingWentWrong,
    required TResult Function(_DatabaseClosed value) databaseClosed,
    required TResult Function(_ObjectNotFound value) objectNotFound,
    required TResult Function(_unexpected value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ClientError value)? clientError,
    TResult Function(_noInternetConnection value)? noInternetConnection,
    TResult Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult Function(_DatabaseClosed value)? databaseClosed,
    TResult Function(_ObjectNotFound value)? objectNotFound,
    TResult Function(_unexpected value)? unexpected,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ClientError value)? clientError,
    TResult Function(_noInternetConnection value)? noInternetConnection,
    TResult Function(_SomethingWentWrong value)? somethingWentWrong,
    TResult Function(_DatabaseClosed value)? databaseClosed,
    TResult Function(_ObjectNotFound value)? objectNotFound,
    TResult Function(_unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _unexpected implements Failure {
  const factory _unexpected() = _$_unexpected;
}
