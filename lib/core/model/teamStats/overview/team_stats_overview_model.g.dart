// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_stats_overview_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamStatsOverviewModel _$TeamStatsOverviewModelFromJson(
        Map<String, dynamic> json) =>
    TeamStatsOverviewModel(
      mapsPlayed: (json['mapsPlayed'] as num?)?.toDouble() ?? 0,
      totalKills: (json['totalKills'] as num?)?.toDouble() ?? 0,
      totalDeaths: (json['totalDeaths'] as num?)?.toDouble() ?? 0,
      roundsPlayed: (json['roundsPlayed'] as num?)?.toDouble() ?? 0,
      kdRatio: (json['kdRatio'] as num?)?.toDouble() ?? 0,
      wins: (json['wins'] as num?)?.toDouble() ?? 0,
      draws: (json['draws'] as num?)?.toDouble() ?? 0,
      losses: (json['losses'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$TeamStatsOverviewModelToJson(
        TeamStatsOverviewModel instance) =>
    <String, dynamic>{
      'mapsPlayed': instance.mapsPlayed,
      'totalKills': instance.totalKills,
      'totalDeaths': instance.totalDeaths,
      'roundsPlayed': instance.roundsPlayed,
      'kdRatio': instance.kdRatio,
      'wins': instance.wins,
      'draws': instance.draws,
      'losses': instance.losses,
    };
