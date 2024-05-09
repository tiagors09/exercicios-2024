// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

People _$PeopleFromJson(Map<String, dynamic> json) => People(
      (json['id'] as num).toInt(),
      json['title'] as String,
      json['name'] as String,
      json['instituition'] as String,
      Map<String, String>.from(json['bio'] as Map),
      json['picture'] as String,
      json['role'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$PeopleToJson(People instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'name': instance.name,
      'instituition': instance.instituition,
      'bio': instance.bio,
      'picture': instance.picture,
      'role': instance.role,
    };
