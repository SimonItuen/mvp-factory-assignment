// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDto _$MovieDtoFromJson(Map<String, dynamic> json) {
  return _MovieDto.fromJson(json);
}

/// @nodoc
mixin _$MovieDto {
  String get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(disallowNullValue: false, defaultValue: '')
  String get genres => throw _privateConstructorUsedError;
  @JsonKey(disallowNullValue: false, defaultValue: '0.0')
  String get imDbRating => throw _privateConstructorUsedError;
  @JsonKey(disallowNullValue: false, defaultValue: false)
  bool? get favorite => throw _privateConstructorUsedError;
  @JsonKey(disallowNullValue: false, defaultValue: false)
  bool? get hidden => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDtoCopyWith<MovieDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDtoCopyWith<$Res> {
  factory $MovieDtoCopyWith(MovieDto value, $Res Function(MovieDto) then) =
      _$MovieDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String image,
      String title,
      String description,
      @JsonKey(disallowNullValue: false, defaultValue: '') String genres,
      @JsonKey(disallowNullValue: false, defaultValue: '0.0') String imDbRating,
      @JsonKey(disallowNullValue: false, defaultValue: false) bool? favorite,
      @JsonKey(disallowNullValue: false, defaultValue: false) bool? hidden});
}

/// @nodoc
class _$MovieDtoCopyWithImpl<$Res> implements $MovieDtoCopyWith<$Res> {
  _$MovieDtoCopyWithImpl(this._value, this._then);

  final MovieDto _value;
  // ignore: unused_field
  final $Res Function(MovieDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? genres = freezed,
    Object? imDbRating = freezed,
    Object? favorite = freezed,
    Object? hidden = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as String,
      imDbRating: imDbRating == freezed
          ? _value.imDbRating
          : imDbRating // ignore: cast_nullable_to_non_nullable
              as String,
      favorite: favorite == freezed
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      hidden: hidden == freezed
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_MovieDtoCopyWith<$Res> implements $MovieDtoCopyWith<$Res> {
  factory _$$_MovieDtoCopyWith(
          _$_MovieDto value, $Res Function(_$_MovieDto) then) =
      __$$_MovieDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String image,
      String title,
      String description,
      @JsonKey(disallowNullValue: false, defaultValue: '') String genres,
      @JsonKey(disallowNullValue: false, defaultValue: '0.0') String imDbRating,
      @JsonKey(disallowNullValue: false, defaultValue: false) bool? favorite,
      @JsonKey(disallowNullValue: false, defaultValue: false) bool? hidden});
}

/// @nodoc
class __$$_MovieDtoCopyWithImpl<$Res> extends _$MovieDtoCopyWithImpl<$Res>
    implements _$$_MovieDtoCopyWith<$Res> {
  __$$_MovieDtoCopyWithImpl(
      _$_MovieDto _value, $Res Function(_$_MovieDto) _then)
      : super(_value, (v) => _then(v as _$_MovieDto));

  @override
  _$_MovieDto get _value => super._value as _$_MovieDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? genres = freezed,
    Object? imDbRating = freezed,
    Object? favorite = freezed,
    Object? hidden = freezed,
  }) {
    return _then(_$_MovieDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as String,
      imDbRating: imDbRating == freezed
          ? _value.imDbRating
          : imDbRating // ignore: cast_nullable_to_non_nullable
              as String,
      favorite: favorite == freezed
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      hidden: hidden == freezed
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieDto extends _MovieDto {
  const _$_MovieDto(
      {required this.id,
      required this.image,
      required this.title,
      required this.description,
      @JsonKey(disallowNullValue: false, defaultValue: '')
          required this.genres,
      @JsonKey(disallowNullValue: false, defaultValue: '0.0')
          required this.imDbRating,
      @JsonKey(disallowNullValue: false, defaultValue: false)
          this.favorite,
      @JsonKey(disallowNullValue: false, defaultValue: false)
          this.hidden})
      : super._();

  factory _$_MovieDto.fromJson(Map<String, dynamic> json) =>
      _$$_MovieDtoFromJson(json);

  @override
  final String id;
  @override
  final String image;
  @override
  final String title;
  @override
  final String description;
  @override
  @JsonKey(disallowNullValue: false, defaultValue: '')
  final String genres;
  @override
  @JsonKey(disallowNullValue: false, defaultValue: '0.0')
  final String imDbRating;
  @override
  @JsonKey(disallowNullValue: false, defaultValue: false)
  final bool? favorite;
  @override
  @JsonKey(disallowNullValue: false, defaultValue: false)
  final bool? hidden;

  @override
  String toString() {
    return 'MovieDto(id: $id, image: $image, title: $title, description: $description, genres: $genres, imDbRating: $imDbRating, favorite: $favorite, hidden: $hidden)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.genres, genres) &&
            const DeepCollectionEquality()
                .equals(other.imDbRating, imDbRating) &&
            const DeepCollectionEquality().equals(other.favorite, favorite) &&
            const DeepCollectionEquality().equals(other.hidden, hidden));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(genres),
      const DeepCollectionEquality().hash(imDbRating),
      const DeepCollectionEquality().hash(favorite),
      const DeepCollectionEquality().hash(hidden));

  @JsonKey(ignore: true)
  @override
  _$$_MovieDtoCopyWith<_$_MovieDto> get copyWith =>
      __$$_MovieDtoCopyWithImpl<_$_MovieDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieDtoToJson(
      this,
    );
  }
}

abstract class _MovieDto extends MovieDto {
  const factory _MovieDto(
      {required final String id,
      required final String image,
      required final String title,
      required final String description,
      @JsonKey(disallowNullValue: false, defaultValue: '')
          required final String genres,
      @JsonKey(disallowNullValue: false, defaultValue: '0.0')
          required final String imDbRating,
      @JsonKey(disallowNullValue: false, defaultValue: false)
          final bool? favorite,
      @JsonKey(disallowNullValue: false, defaultValue: false)
          final bool? hidden}) = _$_MovieDto;
  const _MovieDto._() : super._();

  factory _MovieDto.fromJson(Map<String, dynamic> json) = _$_MovieDto.fromJson;

  @override
  String get id;
  @override
  String get image;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(disallowNullValue: false, defaultValue: '')
  String get genres;
  @override
  @JsonKey(disallowNullValue: false, defaultValue: '0.0')
  String get imDbRating;
  @override
  @JsonKey(disallowNullValue: false, defaultValue: false)
  bool? get favorite;
  @override
  @JsonKey(disallowNullValue: false, defaultValue: false)
  bool? get hidden;
  @override
  @JsonKey(ignore: true)
  _$$_MovieDtoCopyWith<_$_MovieDto> get copyWith =>
      throw _privateConstructorUsedError;
}
