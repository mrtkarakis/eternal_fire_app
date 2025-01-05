// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_stats_map_stats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamStatsMapStatsModel _$TeamStatsMapStatsModelFromJson(
        Map<String, dynamic> json) =>
    TeamStatsMapStatsModel(
      wins: (json['wins'] as num?)?.toDouble(),
      draws: (json['draws'] as num?)?.toDouble(),
      losses: (json['losses'] as num?)?.toDouble(),
      winRate: (json['winRate'] as num?)?.toDouble(),
      totalRounds: (json['totalRounds'] as num?)?.toDouble(),
      roundWinPAfterFirstKill:
          (json['roundWinPAfterFirstKill'] as num?)?.toDouble(),
      roundWinPAfterFirstDeath:
          (json['roundWinPAfterFirstDeath'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$TeamStatsMapStatsModelToJson(
        TeamStatsMapStatsModel instance) =>
    <String, dynamic>{
      'wins': instance.wins,
      'draws': instance.draws,
      'losses': instance.losses,
      'winRate': instance.winRate,
      'totalRounds': instance.totalRounds,
      'roundWinPAfterFirstKill': instance.roundWinPAfterFirstKill,
      'roundWinPAfterFirstDeath': instance.roundWinPAfterFirstDeath,
    };
