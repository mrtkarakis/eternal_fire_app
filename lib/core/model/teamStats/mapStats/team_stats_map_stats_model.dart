import 'package:json_annotation/json_annotation.dart';

part 'team_stats_map_stats_model.g.dart';

@JsonSerializable()
final class TeamStatsMapStatsModel {
  final double? wins;
  final double? draws;
  final double? losses;
  final double? winRate;
  final double? totalRounds;
  final double? roundWinPAfterFirstKill;
  final double? roundWinPAfterFirstDeath;

  const TeamStatsMapStatsModel({
    this.wins,
    this.draws,
    this.losses,
    this.winRate,
    this.totalRounds,
    this.roundWinPAfterFirstKill,
    this.roundWinPAfterFirstDeath,
  });

  factory TeamStatsMapStatsModel.fromJson(final Map<String, dynamic> json) =>
      _$TeamStatsMapStatsModelFromJson(json);

  Map<String, dynamic> toJson() => _$TeamStatsMapStatsModelToJson(this);
}
