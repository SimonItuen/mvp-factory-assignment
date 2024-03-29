// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'responses.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieResponse _$MovieResponseFromJson(Map<String, dynamic> json) {
  return _MovieResponse.fromJson(json);
}

/// @nodoc
mixin _$MovieResponse {
  String get queryString => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieResponseCopyWith<MovieResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieResponseCopyWith<$Res> {
  factory $MovieResponseCopyWith(
          MovieResponse value, $Res Function(MovieResponse) then) =
      _$MovieResponseCopyWithImpl<$Res>;
  $Res call({String queryString, List<Map<String, dynamic>> results});
}

/// @nodoc
class _$MovieResponseCopyWithImpl<$Res>
    implements $MovieResponseCopyWith<$Res> {
  _$MovieResponseCopyWithImpl(this._value, this._then);

  final MovieResponse _value;
  // ignore: unused_field
  final $Res Function(MovieResponse) _then;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as String,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
abstract class _$$_MovieResponseCopyWith<$Res>
    implements $MovieResponseCopyWith<$Res> {
  factory _$$_MovieResponseCopyWith(
          _$_MovieResponse value, $Res Function(_$_MovieResponse) then) =
      __$$_MovieResponseCopyWithImpl<$Res>;
  @override
  $Res call({String queryString, List<Map<String, dynamic>> results});
}

/// @nodoc
class __$$_MovieResponseCopyWithImpl<$Res>
    extends _$MovieResponseCopyWithImpl<$Res>
    implements _$$_MovieResponseCopyWith<$Res> {
  __$$_MovieResponseCopyWithImpl(
      _$_MovieResponse _value, $Res Function(_$_MovieResponse) _then)
      : super(_value, (v) => _then(v as _$_MovieResponse));

  @override
  _$_MovieResponse get _value => super._value as _$_MovieResponse;

  @override
  $Res call({
    Object? queryString = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_MovieResponse(
      queryString: queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as String,
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieResponse implements _MovieResponse {
  const _$_MovieResponse(
      {required this.queryString,
      required final List<Map<String, dynamic>> results})
      : _results = results;

  factory _$_MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MovieResponseFromJson(json);

  @override
  final String queryString;
  final List<Map<String, dynamic>> _results;
  @override
  List<Map<String, dynamic>> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'MovieResponse(queryString: $queryString, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieResponse &&
            const DeepCollectionEquality()
                .equals(other.queryString, queryString) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(queryString),
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_MovieResponseCopyWith<_$_MovieResponse> get copyWith =>
      __$$_MovieResponseCopyWithImpl<_$_MovieResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieResponseToJson(
      this,
    );
  }
}

abstract class _MovieResponse implements MovieResponse {
  const factory _MovieResponse(
      {required final String queryString,
      required final List<Map<String, dynamic>> results}) = _$_MovieResponse;

  factory _MovieResponse.fromJson(Map<String, dynamic> json) =
      _$_MovieResponse.fromJson;

  @override
  String get queryString;
  @override
  List<Map<String, dynamic>> get results;
  @override
  @JsonKey(ignore: true)
  _$$_MovieResponseCopyWith<_$_MovieResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
