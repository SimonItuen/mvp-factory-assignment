// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onWatchAllFavorite,
    required TResult Function(Either<Failure, List<Movie>> failureOrMovies)
        onMoviesReceived,
    required TResult Function() onFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onWatchAllFavorite,
    TResult Function(Either<Failure, List<Movie>> failureOrMovies)?
        onMoviesReceived,
    TResult Function()? onFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onWatchAllFavorite,
    TResult Function(Either<Failure, List<Movie>> failureOrMovies)?
        onMoviesReceived,
    TResult Function()? onFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnWatchAllFavorite value) onWatchAllFavorite,
    required TResult Function(OnMoviesReceieved value) onMoviesReceived,
    required TResult Function(OnFavorite value) onFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnWatchAllFavorite value)? onWatchAllFavorite,
    TResult Function(OnMoviesReceieved value)? onMoviesReceived,
    TResult Function(OnFavorite value)? onFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnWatchAllFavorite value)? onWatchAllFavorite,
    TResult Function(OnMoviesReceieved value)? onMoviesReceived,
    TResult Function(OnFavorite value)? onFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieWatcherEventCopyWith<$Res> {
  factory $MovieWatcherEventCopyWith(
          MovieWatcherEvent value, $Res Function(MovieWatcherEvent) then) =
      _$MovieWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieWatcherEventCopyWithImpl<$Res>
    implements $MovieWatcherEventCopyWith<$Res> {
  _$MovieWatcherEventCopyWithImpl(this._value, this._then);

  final MovieWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(MovieWatcherEvent) _then;
}

/// @nodoc
abstract class _$$OnWatchAllFavoriteCopyWith<$Res> {
  factory _$$OnWatchAllFavoriteCopyWith(_$OnWatchAllFavorite value,
          $Res Function(_$OnWatchAllFavorite) then) =
      __$$OnWatchAllFavoriteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnWatchAllFavoriteCopyWithImpl<$Res>
    extends _$MovieWatcherEventCopyWithImpl<$Res>
    implements _$$OnWatchAllFavoriteCopyWith<$Res> {
  __$$OnWatchAllFavoriteCopyWithImpl(
      _$OnWatchAllFavorite _value, $Res Function(_$OnWatchAllFavorite) _then)
      : super(_value, (v) => _then(v as _$OnWatchAllFavorite));

  @override
  _$OnWatchAllFavorite get _value => super._value as _$OnWatchAllFavorite;
}

/// @nodoc

class _$OnWatchAllFavorite implements OnWatchAllFavorite {
  const _$OnWatchAllFavorite();

  @override
  String toString() {
    return 'MovieWatcherEvent.onWatchAllFavorite()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnWatchAllFavorite);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onWatchAllFavorite,
    required TResult Function(Either<Failure, List<Movie>> failureOrMovies)
        onMoviesReceived,
    required TResult Function() onFavorite,
  }) {
    return onWatchAllFavorite();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onWatchAllFavorite,
    TResult Function(Either<Failure, List<Movie>> failureOrMovies)?
        onMoviesReceived,
    TResult Function()? onFavorite,
  }) {
    return onWatchAllFavorite?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onWatchAllFavorite,
    TResult Function(Either<Failure, List<Movie>> failureOrMovies)?
        onMoviesReceived,
    TResult Function()? onFavorite,
    required TResult orElse(),
  }) {
    if (onWatchAllFavorite != null) {
      return onWatchAllFavorite();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnWatchAllFavorite value) onWatchAllFavorite,
    required TResult Function(OnMoviesReceieved value) onMoviesReceived,
    required TResult Function(OnFavorite value) onFavorite,
  }) {
    return onWatchAllFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnWatchAllFavorite value)? onWatchAllFavorite,
    TResult Function(OnMoviesReceieved value)? onMoviesReceived,
    TResult Function(OnFavorite value)? onFavorite,
  }) {
    return onWatchAllFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnWatchAllFavorite value)? onWatchAllFavorite,
    TResult Function(OnMoviesReceieved value)? onMoviesReceived,
    TResult Function(OnFavorite value)? onFavorite,
    required TResult orElse(),
  }) {
    if (onWatchAllFavorite != null) {
      return onWatchAllFavorite(this);
    }
    return orElse();
  }
}

abstract class OnWatchAllFavorite implements MovieWatcherEvent {
  const factory OnWatchAllFavorite() = _$OnWatchAllFavorite;
}

/// @nodoc
abstract class _$$OnMoviesReceievedCopyWith<$Res> {
  factory _$$OnMoviesReceievedCopyWith(
          _$OnMoviesReceieved value, $Res Function(_$OnMoviesReceieved) then) =
      __$$OnMoviesReceievedCopyWithImpl<$Res>;
  $Res call({Either<Failure, List<Movie>> failureOrMovies});
}

/// @nodoc
class __$$OnMoviesReceievedCopyWithImpl<$Res>
    extends _$MovieWatcherEventCopyWithImpl<$Res>
    implements _$$OnMoviesReceievedCopyWith<$Res> {
  __$$OnMoviesReceievedCopyWithImpl(
      _$OnMoviesReceieved _value, $Res Function(_$OnMoviesReceieved) _then)
      : super(_value, (v) => _then(v as _$OnMoviesReceieved));

  @override
  _$OnMoviesReceieved get _value => super._value as _$OnMoviesReceieved;

  @override
  $Res call({
    Object? failureOrMovies = freezed,
  }) {
    return _then(_$OnMoviesReceieved(
      failureOrMovies == freezed
          ? _value.failureOrMovies
          : failureOrMovies // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<Movie>>,
    ));
  }
}

/// @nodoc

class _$OnMoviesReceieved implements OnMoviesReceieved {
  const _$OnMoviesReceieved(this.failureOrMovies);

  @override
  final Either<Failure, List<Movie>> failureOrMovies;

  @override
  String toString() {
    return 'MovieWatcherEvent.onMoviesReceived(failureOrMovies: $failureOrMovies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnMoviesReceieved &&
            const DeepCollectionEquality()
                .equals(other.failureOrMovies, failureOrMovies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrMovies));

  @JsonKey(ignore: true)
  @override
  _$$OnMoviesReceievedCopyWith<_$OnMoviesReceieved> get copyWith =>
      __$$OnMoviesReceievedCopyWithImpl<_$OnMoviesReceieved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onWatchAllFavorite,
    required TResult Function(Either<Failure, List<Movie>> failureOrMovies)
        onMoviesReceived,
    required TResult Function() onFavorite,
  }) {
    return onMoviesReceived(failureOrMovies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onWatchAllFavorite,
    TResult Function(Either<Failure, List<Movie>> failureOrMovies)?
        onMoviesReceived,
    TResult Function()? onFavorite,
  }) {
    return onMoviesReceived?.call(failureOrMovies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onWatchAllFavorite,
    TResult Function(Either<Failure, List<Movie>> failureOrMovies)?
        onMoviesReceived,
    TResult Function()? onFavorite,
    required TResult orElse(),
  }) {
    if (onMoviesReceived != null) {
      return onMoviesReceived(failureOrMovies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnWatchAllFavorite value) onWatchAllFavorite,
    required TResult Function(OnMoviesReceieved value) onMoviesReceived,
    required TResult Function(OnFavorite value) onFavorite,
  }) {
    return onMoviesReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnWatchAllFavorite value)? onWatchAllFavorite,
    TResult Function(OnMoviesReceieved value)? onMoviesReceived,
    TResult Function(OnFavorite value)? onFavorite,
  }) {
    return onMoviesReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnWatchAllFavorite value)? onWatchAllFavorite,
    TResult Function(OnMoviesReceieved value)? onMoviesReceived,
    TResult Function(OnFavorite value)? onFavorite,
    required TResult orElse(),
  }) {
    if (onMoviesReceived != null) {
      return onMoviesReceived(this);
    }
    return orElse();
  }
}

abstract class OnMoviesReceieved implements MovieWatcherEvent {
  const factory OnMoviesReceieved(
      final Either<Failure, List<Movie>> failureOrMovies) = _$OnMoviesReceieved;

  Either<Failure, List<Movie>> get failureOrMovies;
  @JsonKey(ignore: true)
  _$$OnMoviesReceievedCopyWith<_$OnMoviesReceieved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnFavoriteCopyWith<$Res> {
  factory _$$OnFavoriteCopyWith(
          _$OnFavorite value, $Res Function(_$OnFavorite) then) =
      __$$OnFavoriteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnFavoriteCopyWithImpl<$Res>
    extends _$MovieWatcherEventCopyWithImpl<$Res>
    implements _$$OnFavoriteCopyWith<$Res> {
  __$$OnFavoriteCopyWithImpl(
      _$OnFavorite _value, $Res Function(_$OnFavorite) _then)
      : super(_value, (v) => _then(v as _$OnFavorite));

  @override
  _$OnFavorite get _value => super._value as _$OnFavorite;
}

/// @nodoc

class _$OnFavorite implements OnFavorite {
  const _$OnFavorite();

  @override
  String toString() {
    return 'MovieWatcherEvent.onFavorite()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnFavorite);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onWatchAllFavorite,
    required TResult Function(Either<Failure, List<Movie>> failureOrMovies)
        onMoviesReceived,
    required TResult Function() onFavorite,
  }) {
    return onFavorite();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onWatchAllFavorite,
    TResult Function(Either<Failure, List<Movie>> failureOrMovies)?
        onMoviesReceived,
    TResult Function()? onFavorite,
  }) {
    return onFavorite?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onWatchAllFavorite,
    TResult Function(Either<Failure, List<Movie>> failureOrMovies)?
        onMoviesReceived,
    TResult Function()? onFavorite,
    required TResult orElse(),
  }) {
    if (onFavorite != null) {
      return onFavorite();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnWatchAllFavorite value) onWatchAllFavorite,
    required TResult Function(OnMoviesReceieved value) onMoviesReceived,
    required TResult Function(OnFavorite value) onFavorite,
  }) {
    return onFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnWatchAllFavorite value)? onWatchAllFavorite,
    TResult Function(OnMoviesReceieved value)? onMoviesReceived,
    TResult Function(OnFavorite value)? onFavorite,
  }) {
    return onFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnWatchAllFavorite value)? onWatchAllFavorite,
    TResult Function(OnMoviesReceieved value)? onMoviesReceived,
    TResult Function(OnFavorite value)? onFavorite,
    required TResult orElse(),
  }) {
    if (onFavorite != null) {
      return onFavorite(this);
    }
    return orElse();
  }
}

abstract class OnFavorite implements MovieWatcherEvent {
  const factory OnFavorite() = _$OnFavorite;
}

/// @nodoc
mixin _$MovieWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Movie> movies) content,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Movie> movies)? content,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Movie> movies)? content,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Content value) content,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieWatcherStateCopyWith<$Res> {
  factory $MovieWatcherStateCopyWith(
          MovieWatcherState value, $Res Function(MovieWatcherState) then) =
      _$MovieWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieWatcherStateCopyWithImpl<$Res>
    implements $MovieWatcherStateCopyWith<$Res> {
  _$MovieWatcherStateCopyWithImpl(this._value, this._then);

  final MovieWatcherState _value;
  // ignore: unused_field
  final $Res Function(MovieWatcherState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$MovieWatcherStateCopyWithImpl<$Res>
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
    return 'MovieWatcherState.initial()';
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
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Movie> movies) content,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Movie> movies)? content,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Movie> movies)? content,
    TResult Function(Failure failure)? error,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Content value) content,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MovieWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$MovieWatcherStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'MovieWatcherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Movie> movies) content,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Movie> movies)? content,
    TResult Function(Failure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Movie> movies)? content,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Content value) content,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MovieWatcherState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_EmptyCopyWith<$Res> {
  factory _$$_EmptyCopyWith(_$_Empty value, $Res Function(_$_Empty) then) =
      __$$_EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmptyCopyWithImpl<$Res> extends _$MovieWatcherStateCopyWithImpl<$Res>
    implements _$$_EmptyCopyWith<$Res> {
  __$$_EmptyCopyWithImpl(_$_Empty _value, $Res Function(_$_Empty) _then)
      : super(_value, (v) => _then(v as _$_Empty));

  @override
  _$_Empty get _value => super._value as _$_Empty;
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty();

  @override
  String toString() {
    return 'MovieWatcherState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Movie> movies) content,
    required TResult Function(Failure failure) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Movie> movies)? content,
    TResult Function(Failure failure)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Movie> movies)? content,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Content value) content,
    required TResult Function(_Error value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements MovieWatcherState {
  const factory _Empty() = _$_Empty;
}

/// @nodoc
abstract class _$$_ContentCopyWith<$Res> {
  factory _$$_ContentCopyWith(
          _$_Content value, $Res Function(_$_Content) then) =
      __$$_ContentCopyWithImpl<$Res>;
  $Res call({List<Movie> movies});
}

/// @nodoc
class __$$_ContentCopyWithImpl<$Res>
    extends _$MovieWatcherStateCopyWithImpl<$Res>
    implements _$$_ContentCopyWith<$Res> {
  __$$_ContentCopyWithImpl(_$_Content _value, $Res Function(_$_Content) _then)
      : super(_value, (v) => _then(v as _$_Content));

  @override
  _$_Content get _value => super._value as _$_Content;

  @override
  $Res call({
    Object? movies = freezed,
  }) {
    return _then(_$_Content(
      movies == freezed
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$_Content implements _Content {
  const _$_Content(final List<Movie> movies) : _movies = movies;

  final List<Movie> _movies;
  @override
  List<Movie> get movies {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  String toString() {
    return 'MovieWatcherState.content(movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Content &&
            const DeepCollectionEquality().equals(other._movies, _movies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_movies));

  @JsonKey(ignore: true)
  @override
  _$$_ContentCopyWith<_$_Content> get copyWith =>
      __$$_ContentCopyWithImpl<_$_Content>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Movie> movies) content,
    required TResult Function(Failure failure) error,
  }) {
    return content(movies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Movie> movies)? content,
    TResult Function(Failure failure)? error,
  }) {
    return content?.call(movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Movie> movies)? content,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Content value) content,
    required TResult Function(_Error value) error,
  }) {
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
  }) {
    return content?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class _Content implements MovieWatcherState {
  const factory _Content(final List<Movie> movies) = _$_Content;

  List<Movie> get movies;
  @JsonKey(ignore: true)
  _$$_ContentCopyWith<_$_Content> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$MovieWatcherStateCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$_Error(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'MovieWatcherState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Movie> movies) content,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Movie> movies)? content,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Movie> movies)? content,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Content value) content,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Empty value)? empty,
    TResult Function(_Content value)? content,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements MovieWatcherState {
  const factory _Error(final Failure failure) = _$_Error;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
