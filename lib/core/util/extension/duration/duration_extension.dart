import '../string/string_extension.dart';

extension DurationExtension on Duration? {
  String get toMinute =>
      this != null ? this!.inMinutes.remainder(60).toString().with0 : "00";
  String get toSecond =>
      this != null ? this!.inSeconds.remainder(60).toString().with0 : "00";

  String get toMinAndSec => "$toMinute:$toSecond";
}
