// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Activity _$ActivityFromJson(Map<String, dynamic> json) => Activity(
      (json['id'] as num).toInt(),
      DateTime.parse(json['start'] as String),
      DateTime.parse(json['end'] as String),
      Map<String, String>.from(json['title'] as Map),
      Map<String, String>.from(json['description'] as Map),
      json['category'] as Map<String, dynamic>,
      (json['locations'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      json['type'] as Map<String, dynamic>,
      (json['people'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      json['event'] as String,
    );

Map<String, dynamic> _$ActivityToJson(Activity instance) => <String, dynamic>{
      'id': instance.id,
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
      'title': instance.title,
      'description': instance.description,
      'category': instance.category,
      'locations': instance.locations,
      'type': instance.type,
      'people': instance.people,
      'event': instance.event,
    };
