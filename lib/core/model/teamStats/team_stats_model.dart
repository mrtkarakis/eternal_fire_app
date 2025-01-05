import 'package:json_annotation/json_annotation.dart';

import 'event/team_stats_event_model.dart';
import 'mapStats/team_stats_map_stats_model.dart';
import 'overview/team_stats_overview_model.dart';
import 'player/team_stats_player_model.dart';

part 'team_stats_model.g.dart';

@JsonSerializable()
final class TeamStatsModel {
  final int? id;
  final String? name;
  final TeamStatsOverviewModel overview;
  final List<TeamStatsPlayer> currentLineup;
  final List<TeamStatsPlayer> historicPlayers;
  final List<TeamStatsPlayer> standins;
  final List<TeamStatsPlayer> substitutes;
  final List<TeamStatsEventModel> events;
  final Map<String, TeamStatsMapStatsModel> mapStats;

  const TeamStatsModel({
    this.id,
    this.name,
    this.overview = const TeamStatsOverviewModel(),
    this.currentLineup = const [],
    this.historicPlayers = const [],
    this.standins = const [],
    this.substitutes = const [],
    this.events = const [],
    this.mapStats = const {},
  });

  factory TeamStatsModel.fromJson(final Map<String, dynamic> json) =>
      _$TeamStatsModelFromJson(json);

  Map<String, dynamic> toJson() => _$TeamStatsModelToJson(this);
}
