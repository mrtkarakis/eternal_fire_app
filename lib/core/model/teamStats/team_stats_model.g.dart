// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamStatsModel _$TeamStatsModelFromJson(Map<String, dynamic> json) =>
    TeamStatsModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      overview: json['overview'] == null
          ? const TeamStatsOverviewModel()
          : TeamStatsOverviewModel.fromJson(
              json['overview'] as Map<String, dynamic>),
      currentLineup: (json['currentLineup'] as List<dynamic>?)
              ?.map((e) => TeamStatsPlayer.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      historicPlayers: (json['historicPlayers'] as List<dynamic>?)
              ?.map((e) => TeamStatsPlayer.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      standins: (json['standins'] as List<dynamic>?)
              ?.map((e) => TeamStatsPlayer.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      substitutes: (json['substitutes'] as List<dynamic>?)
              ?.map((e) => TeamStatsPlayer.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      events: (json['events'] as List<dynamic>?)
              ?.map((e) =>
                  TeamStatsEventModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      mapStats: (json['mapStats'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k, TeamStatsMapStatsModel.fromJson(e as Map<String, dynamic>)),
          ) ??
          const {},
    );

Map<String, dynamic> _$TeamStatsModelToJson(TeamStatsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'overview': instance.overview,
      'currentLineup': instance.currentLineup,
      'historicPlayers': instance.historicPlayers,
      'standins': instance.standins,
      'substitutes': instance.substitutes,
      'events': instance.events,
      'mapStats': instance.mapStats,
    };
