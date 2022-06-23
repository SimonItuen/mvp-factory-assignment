// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieActorEvent {
  Movie get movie => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Movie movie) addFavoriteMovie,
    required TResult Function(Movie movie) addHiddenMovie,
    required TResult Function(Movie movie) removeFavoriteMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Movie movie)? addFavoriteMovie,
    TResult Function(Movie movie)? addHiddenMovie,
    TResult Function(Movie movie)? removeFavoriteMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Movie movie)? addFavoriteMovie,
    TResult Function(Movie movie)? addHiddenMovie,
    TResult Function(Movie movie)? removeFavoriteMovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFavoriteMovie value) addFavoriteMovie,
    required TResult Function(AddHiddenMovie value) addHiddenMovie,
    required TResult Function(RemoveFavoriteMovie value) removeFavoriteMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddFavoriteMovie value)? addFavoriteMovie,
    TResult Function(AddHiddenMovie value)? addHiddenMovie,
    TResult Function(RemoveFavoriteMovie value)? removeFavoriteMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFavoriteMovie value)? addFavoriteMovie,
    TResult Function(AddHiddenMovie value)? addHiddenMovie,
    TResult Function(RemoveFavoriteMovie value)? removeFavoriteMovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieActorEventCopyWith<MovieActorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieActorEventCopyWith<$Res> {
  factory $MovieActorEventCopyWith(
          MovieActorEvent value, $Res Function(MovieActorEvent) then) =
      _$MovieActorEventCopyWithImpl<$Res>;
  $Res call({Movie movie});

  $MovieCopyWith<$Res> get movie;
}

/// @nodoc
class _$MovieActorEventCopyWithImpl<$Res>
    implements $MovieActorEventCopyWith<$Res> {
  _$MovieActorEventCopyWithImpl(this._value, this._then);

  final MovieActorEvent _value;
  // ignore: unused_field
  final $Res Function(MovieActorEvent) _then;

  @override
  $Res call({
    Object? movie = freezed,
  }) {
    return _then(_value.copyWith(
      movie: movie == freezed
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
    ));
  }

  @override
  $MovieCopyWith<$Res> get movie {
    return $MovieCopyWith<$Res>(_value.movie, (value) {
      return _then(_value.copyWith(movie: value));
    });
  }
}

/// @nodoc
abstract class _$$AddFavoriteMovieCopyWith<$Res>
    implements $MovieActorEventCopyWith<$Res> {
  factory _$$AddFavoriteMovieCopyWith(
          _$AddFavoriteMovie value, $Res Function(_$AddFavoriteMovie) then) =
      __$$AddFavoriteMovieCopyWithImpl<$Res>;
  @override
  $Res call({Movie movie});

  @override
  $MovieCopyWith<$Res> get movie;
}

/// @nodoc
class __$$AddFavoriteMovieCopyWithImpl<$Res>
    extends _$MovieActorEventCopyWithImpl<$Res>
    implements _$$AddFavoriteMovieCopyWith<$Res> {
  __$$AddFavoriteMovieCopyWithImpl(
      _$AddFavoriteMovie _value, $Res Function(_$AddFavoriteMovie) _then)
      : super(_value, (v) => _then(v as _$AddFavoriteMovie));

  @override
  _$AddFavoriteMovie get _value => super._value as _$AddFavoriteMovie;

  @override
  $Res call({
    Object? movie = freezed,
  }) {
    return _then(_$AddFavoriteMovie(
      movie == freezed
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
    ));
  }
}

/// @nodoc

class _$AddFavoriteMovie implements AddFavoriteMovie {
  const _$AddFavoriteMovie(this.movie);

  @override
  final Movie movie;

  @override
  String toString() {
    return 'MovieActorEvent.addFavoriteMovie(movie: $movie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavoriteMovie &&
            const DeepCollectionEquality().equals(other.movie, movie));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movie));

  @JsonKey(ignore: true)
  @override
  _$$AddFavoriteMovieCopyWith<_$AddFavoriteMovie> get copyWith =>
      __$$AddFavoriteMovieCopyWithImpl<_$AddFavoriteMovie>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Movie movie) addFavoriteMovie,
    required TResult Function(Movie movie) addHiddenMovie,
    required TResult Function(Movie movie) removeFavoriteMovie,
  }) {
    return addFavoriteMovie(movie);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Movie movie)? addFavoriteMovie,
    TResult Function(Movie movie)? addHiddenMovie,
    TResult Function(Movie movie)? removeFavoriteMovie,
  }) {
    return addFavoriteMovie?.call(movie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Movie movie)? addFavoriteMovie,
    TResult Function(Movie movie)? addHiddenMovie,
    TResult Function(Movie movie)? removeFavoriteMovie,
    required TResult orElse(),
  }) {
    if (addFavoriteMovie != null) {
      return addFavoriteMovie(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFavoriteMovie value) addFavoriteMovie,
    required TResult Function(AddHiddenMovie value) addHiddenMovie,
    required TResult Function(RemoveFavoriteMovie value) removeFavoriteMovie,
  }) {
    return addFavoriteMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddFavoriteMovie value)? addFavoriteMovie,
    TResult Function(AddHiddenMovie value)? addHiddenMovie,
    TResult Function(RemoveFavoriteMovie value)? removeFavoriteMovie,
  }) {
    return addFavoriteMovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFavoriteMovie value)? addFavoriteMovie,
    TResult Function(AddHiddenMovie value)? addHiddenMovie,
    TResult Function(RemoveFavoriteMovie value)? removeFavoriteMovie,
    required TResult orElse(),
  }) {
    if (addFavoriteMovie != null) {
      return addFavoriteMovie(this);
    }
    return orElse();
  }
}

abstract class AddFavoriteMovie implements MovieActorEvent {
  const factory AddFavoriteMovie(final Movie movie) = _$AddFavoriteMovie;

  @override
  Movie get movie => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$AddFavoriteMovieCopyWith<_$AddFavoriteMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddHiddenMovieCopyWith<$Res>
    implements $MovieActorEventCopyWith<$Res> {
  factory _$$AddHiddenMovieCopyWith(
          _$AddHiddenMovie value, $Res Function(_$AddHiddenMovie) then) =
      __$$AddHiddenMovieCopyWithImpl<$Res>;
  @override
  $Res call({Movie movie});

  @override
  $MovieCopyWith<$Res> get movie;
}

/// @nodoc
class __$$AddHiddenMovieCopyWithImpl<$Res>
    extends _$MovieActorEventCopyWithImpl<$Res>
    implements _$$AddHiddenMovieCopyWith<$Res> {
  __$$AddHiddenMovieCopyWithImpl(
      _$AddHiddenMovie _value, $Res Function(_$AddHiddenMovie) _then)
      : super(_value, (v) => _then(v as _$AddHiddenMovie));

  @override
  _$AddHiddenMovie get _value => super._value as _$AddHiddenMovie;

  @override
  $Res call({
    Object? movie = freezed,
  }) {
    return _then(_$AddHiddenMovie(
      movie == freezed
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
    ));
  }
}

/// @nodoc

class _$AddHiddenMovie implements AddHiddenMovie {
  const _$AddHiddenMovie(this.movie);

  @override
  final Movie movie;

  @override
  String toString() {
    return 'MovieActorEvent.addHiddenMovie(movie: $movie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddHiddenMovie &&
            const DeepCollectionEquality().equals(other.movie, movie));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movie));

  @JsonKey(ignore: true)
  @override
  _$$AddHiddenMovieCopyWith<_$AddHiddenMovie> get copyWith =>
      __$$AddHiddenMovieCopyWithImpl<_$AddHiddenMovie>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Movie movie) addFavoriteMovie,
    required TResult Function(Movie movie) addHiddenMovie,
    required TResult Function(Movie movie) removeFavoriteMovie,
  }) {
    return addHiddenMovie(movie);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Movie movie)? addFavoriteMovie,
    TResult Function(Movie movie)? addHiddenMovie,
    TResult Function(Movie movie)? removeFavoriteMovie,
  }) {
    return addHiddenMovie?.call(movie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Movie movie)? addFavoriteMovie,
    TResult Function(Movie movie)? addHiddenMovie,
    TResult Function(Movie movie)? removeFavoriteMovie,
    required TResult orElse(),
  }) {
    if (addHiddenMovie != null) {
      return addHiddenMovie(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFavoriteMovie value) addFavoriteMovie,
    required TResult Function(AddHiddenMovie value) addHiddenMovie,
    required TResult Function(RemoveFavoriteMovie value) removeFavoriteMovie,
  }) {
    return addHiddenMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddFavoriteMovie value)? addFavoriteMovie,
    TResult Function(AddHiddenMovie value)? addHiddenMovie,
    TResult Function(RemoveFavoriteMovie value)? removeFavoriteMovie,
  }) {
    return addHiddenMovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFavoriteMovie value)? addFavoriteMovie,
    TResult Function(AddHiddenMovie value)? addHiddenMovie,
    TResult Function(RemoveFavoriteMovie value)? removeFavoriteMovie,
    required TResult orElse(),
  }) {
    if (addHiddenMovie != null) {
      return addHiddenMovie(this);
    }
    return orElse();
  }
}

abstract class AddHiddenMovie implements MovieActorEvent {
  const factory AddHiddenMovie(final Movie movie) = _$AddHiddenMovie;

  @override
  Movie get movie => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$AddHiddenMovieCopyWith<_$AddHiddenMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFavoriteMovieCopyWith<$Res>
    implements $MovieActorEventCopyWith<$Res> {
  factory _$$RemoveFavoriteMovieCopyWith(_$RemoveFavoriteMovie value,
          $Res Function(_$RemoveFavoriteMovie) then) =
      __$$RemoveFavoriteMovieCopyWithImpl<$Res>;
  @override
  $Res call({Movie movie});

  @override
  $MovieCopyWith<$Res> get movie;
}

/// @nodoc
class __$$RemoveFavoriteMovieCopyWithImpl<$Res>
    extends _$MovieActorEventCopyWithImpl<$Res>
    implements _$$RemoveFavoriteMovieCopyWith<$Res> {
  __$$RemoveFavoriteMovieCopyWithImpl(
      _$RemoveFavoriteMovie _value, $Res Function(_$RemoveFavoriteMovie) _then)
      : super(_value, (v) => _then(v as _$RemoveFavoriteMovie));

  @override
  _$RemoveFavoriteMovie get _value => super._value as _$RemoveFavoriteMovie;

  @override
  $Res call({
    Object? movie = freezed,
  }) {
    return _then(_$RemoveFavoriteMovie(
      movie == freezed
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
    ));
  }
}

/// @nodoc

class _$RemoveFavoriteMovie implements RemoveFavoriteMovie {
  const _$RemoveFavoriteMovie(this.movie);

  @override
  final Movie movie;

  @override
  String toString() {
    return 'MovieActorEvent.removeFavoriteMovie(movie: $movie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFavoriteMovie &&
            const DeepCollectionEquality().equals(other.movie, movie));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movie));

  @JsonKey(ignore: true)
  @override
  _$$RemoveFavoriteMovieCopyWith<_$RemoveFavoriteMovie> get copyWith =>
      __$$RemoveFavoriteMovieCopyWithImpl<_$RemoveFavoriteMovie>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Movie movie) addFavoriteMovie,
    required TResult Function(Movie movie) addHiddenMovie,
    required TResult Function(Movie movie) removeFavoriteMovie,
  }) {
    return removeFavoriteMovie(movie);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Movie movie)? addFavoriteMovie,
    TResult Function(Movie movie)? addHiddenMovie,
    TResult Function(Movie movie)? removeFavoriteMovie,
  }) {
    return removeFavoriteMovie?.call(movie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Movie movie)? addFavoriteMovie,
    TResult Function(Movie movie)? addHiddenMovie,
    TResult Function(Movie movie)? removeFavoriteMovie,
    required TResult orElse(),
  }) {
    if (removeFavoriteMovie != null) {
      return removeFavoriteMovie(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddFavoriteMovie value) addFavoriteMovie,
    required TResult Function(AddHiddenMovie value) addHiddenMovie,
    required TResult Function(RemoveFavoriteMovie value) removeFavoriteMovie,
  }) {
    return removeFavoriteMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddFavoriteMovie value)? addFavoriteMovie,
    TResult Function(AddHiddenMovie value)? addHiddenMovie,
    TResult Function(RemoveFavoriteMovie value)? removeFavoriteMovie,
  }) {
    return removeFavoriteMovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddFavoriteMovie value)? addFavoriteMovie,
    TResult Function(AddHiddenMovie value)? addHiddenMovie,
    TResult Function(RemoveFavoriteMovie value)? removeFavoriteMovie,
    required TResult orElse(),
  }) {
    if (removeFavoriteMovie != null) {
      return removeFavoriteMovie(this);
    }
    return orElse();
  }
}

abstract class RemoveFavoriteMovie implements MovieActorEvent {
  const factory RemoveFavoriteMovie(final Movie movie) = _$RemoveFavoriteMovie;

  @override
  Movie get movie => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$RemoveFavoriteMovieCopyWith<_$RemoveFavoriteMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MovieActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(Failure failure) actionFailure,
    required TResult Function() actionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(Failure failure)? actionFailure,
    TResult Function()? actionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(Failure failure)? actionFailure,
    TResult Function()? actionSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_actionFailure value) actionFailure,
    required TResult Function(_actionSuccess value) actionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_actionFailure value)? actionFailure,
    TResult Function(_actionSuccess value)? actionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_actionFailure value)? actionFailure,
    TResult Function(_actionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieActorStateCopyWith<$Res> {
  factory $MovieActorStateCopyWith(
          MovieActorState value, $Res Function(MovieActorState) then) =
      _$MovieActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieActorStateCopyWithImpl<$Res>
    implements $MovieActorStateCopyWith<$Res> {
  _$MovieActorStateCopyWithImpl(this._value, this._then);

  final MovieActorState _value;
  // ignore: unused_field
  final $Res Function(MovieActorState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$MovieActorStateCopyWithImpl<$Res>
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
    return 'MovieActorState.initial()';
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
    required TResult Function() actionInProgress,
    required TResult Function(Failure failure) actionFailure,
    required TResult Function() actionSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(Failure failure)? actionFailure,
    TResult Function()? actionSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(Failure failure)? actionFailure,
    TResult Function()? actionSuccess,
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
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_actionFailure value) actionFailure,
    required TResult Function(_actionSuccess value) actionSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_actionFailure value)? actionFailure,
    TResult Function(_actionSuccess value)? actionSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_actionFailure value)? actionFailure,
    TResult Function(_actionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MovieActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ActionInProgressCopyWith<$Res> {
  factory _$$_ActionInProgressCopyWith(
          _$_ActionInProgress value, $Res Function(_$_ActionInProgress) then) =
      __$$_ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ActionInProgressCopyWithImpl<$Res>
    extends _$MovieActorStateCopyWithImpl<$Res>
    implements _$$_ActionInProgressCopyWith<$Res> {
  __$$_ActionInProgressCopyWithImpl(
      _$_ActionInProgress _value, $Res Function(_$_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _$_ActionInProgress));

  @override
  _$_ActionInProgress get _value => super._value as _$_ActionInProgress;
}

/// @nodoc

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'MovieActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(Failure failure) actionFailure,
    required TResult Function() actionSuccess,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(Failure failure)? actionFailure,
    TResult Function()? actionSuccess,
  }) {
    return actionInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(Failure failure)? actionFailure,
    TResult Function()? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_actionFailure value) actionFailure,
    required TResult Function(_actionSuccess value) actionSuccess,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_actionFailure value)? actionFailure,
    TResult Function(_actionSuccess value)? actionSuccess,
  }) {
    return actionInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_actionFailure value)? actionFailure,
    TResult Function(_actionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements MovieActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$$_actionFailureCopyWith<$Res> {
  factory _$$_actionFailureCopyWith(
          _$_actionFailure value, $Res Function(_$_actionFailure) then) =
      __$$_actionFailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_actionFailureCopyWithImpl<$Res>
    extends _$MovieActorStateCopyWithImpl<$Res>
    implements _$$_actionFailureCopyWith<$Res> {
  __$$_actionFailureCopyWithImpl(
      _$_actionFailure _value, $Res Function(_$_actionFailure) _then)
      : super(_value, (v) => _then(v as _$_actionFailure));

  @override
  _$_actionFailure get _value => super._value as _$_actionFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$_actionFailure(
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

class _$_actionFailure implements _actionFailure {
  const _$_actionFailure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'MovieActorState.actionFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_actionFailure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_actionFailureCopyWith<_$_actionFailure> get copyWith =>
      __$$_actionFailureCopyWithImpl<_$_actionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(Failure failure) actionFailure,
    required TResult Function() actionSuccess,
  }) {
    return actionFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(Failure failure)? actionFailure,
    TResult Function()? actionSuccess,
  }) {
    return actionFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(Failure failure)? actionFailure,
    TResult Function()? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_actionFailure value) actionFailure,
    required TResult Function(_actionSuccess value) actionSuccess,
  }) {
    return actionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_actionFailure value)? actionFailure,
    TResult Function(_actionSuccess value)? actionSuccess,
  }) {
    return actionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_actionFailure value)? actionFailure,
    TResult Function(_actionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(this);
    }
    return orElse();
  }
}

abstract class _actionFailure implements MovieActorState {
  const factory _actionFailure(final Failure failure) = _$_actionFailure;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_actionFailureCopyWith<_$_actionFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_actionSuccessCopyWith<$Res> {
  factory _$$_actionSuccessCopyWith(
          _$_actionSuccess value, $Res Function(_$_actionSuccess) then) =
      __$$_actionSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_actionSuccessCopyWithImpl<$Res>
    extends _$MovieActorStateCopyWithImpl<$Res>
    implements _$$_actionSuccessCopyWith<$Res> {
  __$$_actionSuccessCopyWithImpl(
      _$_actionSuccess _value, $Res Function(_$_actionSuccess) _then)
      : super(_value, (v) => _then(v as _$_actionSuccess));

  @override
  _$_actionSuccess get _value => super._value as _$_actionSuccess;
}

/// @nodoc

class _$_actionSuccess implements _actionSuccess {
  const _$_actionSuccess();

  @override
  String toString() {
    return 'MovieActorState.actionSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_actionSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(Failure failure) actionFailure,
    required TResult Function() actionSuccess,
  }) {
    return actionSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(Failure failure)? actionFailure,
    TResult Function()? actionSuccess,
  }) {
    return actionSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(Failure failure)? actionFailure,
    TResult Function()? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_actionFailure value) actionFailure,
    required TResult Function(_actionSuccess value) actionSuccess,
  }) {
    return actionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_actionFailure value)? actionFailure,
    TResult Function(_actionSuccess value)? actionSuccess,
  }) {
    return actionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_actionFailure value)? actionFailure,
    TResult Function(_actionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(this);
    }
    return orElse();
  }
}

abstract class _actionSuccess implements MovieActorState {
  const factory _actionSuccess() = _$_actionSuccess;
}
