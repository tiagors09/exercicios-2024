import 'package:json_annotation/json_annotation.dart';

part 'people.g.dart';

@JsonSerializable()
class People {
  final int id;
  final String title;
  final String name;
  final String instituition;
  final Map<String, String> bio;
  final String picture;
  final Map<String, dynamic> role;

  People(
    this.id,
    this.title,
    this.name,
    this.instituition,
    this.bio,
    this.picture,
    this.role,
  );

  factory People.fromJson(Map<String, dynamic> json) => _$PeopleFromJson(json);
}
