import 'package:json_annotation/json_annotation.dart';

part 'team_stats_overview_model.g.dart';

@JsonSerializable()
final class TeamStatsOverviewModel {
  final double mapsPlayed;
  final double totalKills;
  final double totalDeaths;
  final double roundsPlayed;
  final double kdRatio;
  final double wins;
  final double draws;
  final double losses;

  const TeamStatsOverviewModel({
    this.mapsPlayed = 0,
    this.totalKills = 0,
    this.totalDeaths = 0,
    this.roundsPlayed = 0,
    this.kdRatio = 0,
    this.wins = 0,
    this.draws = 0,
    this.losses = 0,
  });

  factory TeamStatsOverviewModel.fromJson(final Map<String, dynamic> json) =>
      _$TeamStatsOverviewModelFromJson(json);

  Map<String, dynamic> toJson() => _$TeamStatsOverviewModelToJson(this);
}
