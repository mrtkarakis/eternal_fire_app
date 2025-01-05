import 'package:json_annotation/json_annotation.dart';

part 'team_stats_player_model.g.dart';

@JsonSerializable()
final class TeamStatsPlayer {
  final int? id;
  final String? name;

  const TeamStatsPlayer({
    this.id,
    this.name,
  });

  factory TeamStatsPlayer.fromJson(final Map<String, dynamic> json) =>
      _$TeamStatsPlayerFromJson(json);

  Map<String, dynamic> toJson() => _$TeamStatsPlayerToJson(this);
}
