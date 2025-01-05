// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_stats_player_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamStatsPlayer _$TeamStatsPlayerFromJson(Map<String, dynamic> json) =>
    TeamStatsPlayer(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$TeamStatsPlayerToJson(TeamStatsPlayer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
