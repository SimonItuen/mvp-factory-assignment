// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDto _$$_MovieDtoFromJson(Map<String, dynamic> json) => _$_MovieDto(
      id: json['id'] as String,
      image: json['image'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      genres: json['genres'] as String? ?? '',
      imDbRating: json['imDbRating'] as String? ?? '0.0',
      favorite: json['favorite'] as bool? ?? false,
      hidden: json['hidden'] as bool? ?? false,
    );

Map<String, dynamic> _$$_MovieDtoToJson(_$_MovieDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'title': instance.title,
      'description': instance.description,
      'genres': instance.genres,
      'imDbRating': instance.imDbRating,
      'favorite': instance.favorite,
      'hidden': instance.hidden,
    };
