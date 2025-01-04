import 'package:easy_localization/easy_localization.dart';

final class AppText {
  // Global
  static String get search => "search".tr();
  static String get next => "next".tr();
  static String get confirm => "confirm".tr();
  static String get other => "other".tr();
  static String get saveChanges => "saveChanges".tr();
  static String get share => "share".tr();
  static String get continueT => "continue".tr();
  static String get changeLanguage => "changeLanguage".tr();
  static String monthName(final int index) => "monthsList.$index".tr();

  // Validation
  static String get validationBlank => "validationValues.blank".tr();
}
