// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_adapters.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MovieDocumentAdapter extends TypeAdapter<MovieDocument> {
  @override
  final int typeId = 0;

  @override
  MovieDocument read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MovieDocument(
      id: fields[0] as String,
      image: fields[1] as String,
      title: fields[2] as String,
      description: fields[3] as String,
      genres: fields[4] as String,
      imDbRating: fields[5] as String,
      favorite: fields[6] as bool,
      hidden: fields[7] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, MovieDocument obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.image)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.genres)
      ..writeByte(5)
      ..write(obj.imDbRating)
      ..writeByte(6)
      ..write(obj.favorite)
      ..writeByte(7)
      ..write(obj.hidden);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieDocumentAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
