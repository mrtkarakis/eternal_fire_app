// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_stats_event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamStatsEventModel _$TeamStatsEventModelFromJson(Map<String, dynamic> json) =>
    TeamStatsEventModel(
      id: (json['id'] as num?)?.toInt(),
      place: json['place'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$TeamStatsEventModelToJson(
        TeamStatsEventModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'place': instance.place,
      'name': instance.name,
    };
