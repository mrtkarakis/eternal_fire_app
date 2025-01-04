import '../../localization/app_text.dart';
import '../string/string_extension.dart';

extension DateTimeExtension on DateTime? {
  String get toHour =>
      this != null ? this!.toLocal().hour.remainder(60).toString().with0 : "00";
  String get toMinute => this != null
      ? this!.toLocal().minute.remainder(60).toString().with0
      : "00";
  String get toSecond => this != null
      ? this!.toLocal().second.remainder(60).toString().with0
      : "00";

  String get toHourAndMinute => "$toHour:$toMinute";

  String? get toTime => this != null ? "$toHour:$toMinute:$toSecond" : null;

  String? get toDate => this != null
      ? "${'${this!.toLocal().day}'.with0}/${'${this!.toLocal().month}'.with0}/${this!.toLocal().year}"
      : null;

  String? get toDateAndTime => this != null ? "$toDate $toTime" : null;

  String get monthName =>
      this != null ? AppText.monthName(this!.toLocal().month).capitalize : "";

  String timeAgo() {
    if (this == null) return "";

    final now = DateTime.now();
    final difference = now.difference(this!);

    if (difference.inMinutes < 60) {
      return '${difference.inMinutes} mins ago'; // TODO: AppText
    }
    if (difference.inHours < 24) {
      return '${difference.inHours} hours ago'; // TODO: AppText
    }
    if (difference.inDays < 7) {
      return '${difference.inDays} days ago'; // TODO: AppText
    }

    return "${'${this!.toLocal().day}'.with0}/${'${this!.toLocal().month}'.with0}/${this!.toLocal().year}";
  }
}
