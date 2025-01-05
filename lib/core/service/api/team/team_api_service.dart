import 'package:eternal_fire_static/core/model/teamStats/team_stats_model.dart';
import 'package:eternal_fire_static/core/network/network_manager.dart';
import 'package:eternal_fire_static/core/private/api_path.dart';
import 'package:eternal_fire_static/global.dart';

final class TeamApiService {
  static Future<void> fetchTeam() async {
    final response = await NetworkManager.get(ApiPath.team);

    developerLog(response.data.toString());
  }

  static Future<TeamStatsModel> fetchTeamStats() async {
    final response = await NetworkManager.get(ApiPath.teamStats);

    final data = response.data;

    if (data is! Map<String, dynamic>) return TeamStatsModel();

    final result = TeamStatsModel.fromJson(data);

    return result;
  }
}
