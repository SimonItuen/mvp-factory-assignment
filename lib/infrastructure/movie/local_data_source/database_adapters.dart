import 'package:hive/hive.dart';

part 'database_adapters.g.dart';

@HiveType(typeId: 0)
class MovieDocument {
  @HiveField(0)
  String id;

  @HiveField(1)
  String image;

  @HiveField(2)
  String title;

  @HiveField(3)
  String description;

  @HiveField(4)
  String genres;

  @HiveField(5)
  String imDbRating;

  @HiveField(6)
  bool favorite;

  @HiveField(7)
  bool hidden;

  MovieDocument({
    required this.id,
    required this.image,
    required this.title,
    required this.description,
    required this.genres,
    required this.imDbRating,
    this.favorite = false,
    this.hidden= false,
  });
}
