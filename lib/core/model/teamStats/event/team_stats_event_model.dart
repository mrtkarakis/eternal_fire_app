import 'package:json_annotation/json_annotation.dart';

part 'team_stats_event_model.g.dart';

@JsonSerializable()
final class TeamStatsEventModel {
  final int? id;
  final String? place;
  final String? name;

  const TeamStatsEventModel({
    this.id,
    this.place,
    this.name,
  });

  factory TeamStatsEventModel.fromJson(final Map<String, dynamic> json) {
    final id = (json["event"] as Map? ?? {"id": null})["id"];
    final name = (json["event"] as Map? ?? {"name": null})["name"];
    json["name"] = name;
    json["id"] = id;

    return _$TeamStatsEventModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$TeamStatsEventModelToJson(this);
}
