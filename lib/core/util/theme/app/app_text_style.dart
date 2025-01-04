import 'package:flutter/material.dart';

import 'app_color.dart';

final class LightAppTextStyle {
  static const String? defaultFont = null;
  static const Color defaultColor = LightAppColor.black;

  static const TextStyle displaySmall = TextStyle(
    // w70011 displaySmall text9
    fontSize: 11,
    color: defaultColor,
    fontWeight: FontWeight.w700,
    fontFamily: defaultFont,
  );

  static const TextStyle headlineSmall = TextStyle(
    // w30012 bodyLarge text4
    fontSize: 12,
    color: defaultColor,
    fontWeight: FontWeight.w300,
    fontFamily: defaultFont,
  );

  static const TextStyle titleLarge = TextStyle(
    // w50014 titleLarge text3
    fontSize: 14,
    color: defaultColor,
    fontWeight: FontWeight.w500,
    fontFamily: defaultFont,
    letterSpacing: 1,
  );

  static const TextStyle titleMedium = TextStyle(
    // w40014 titleMedium text5
    fontSize: 14,
    color: defaultColor,
    fontWeight: FontWeight.w400,
    fontFamily: defaultFont,
  );

  static const TextStyle labelLarge = TextStyle(
    // w50010 labelLarge text1
    fontSize: 10,
    color: defaultColor,
    fontWeight: FontWeight.w500,
    fontFamily: defaultFont,
  );

  static const TextStyle labelMedium = TextStyle(
    // w30010 labelMedium text6
    fontSize: 10,
    color: defaultColor,
    fontWeight: FontWeight.w300,
    fontFamily: defaultFont,
  );

  static const TextStyle bodyLarge = TextStyle(
    // w30014 bodyLarge text2
    fontSize: 14,
    color: defaultColor,
    fontWeight: FontWeight.w300,
    fontFamily: defaultFont,
  );

  static const TextStyle bodyMedium = TextStyle(
    // w40011 bodyMedium text8
    fontSize: 11,
    color: defaultColor,
    fontWeight: FontWeight.w400,
    fontFamily: defaultFont,
  );
  static const TextStyle bodySmall = TextStyle(
    // w30011 bodySmall text7
    fontSize: 11,
    color: defaultColor,
    fontWeight: FontWeight.w300,
    fontFamily: defaultFont,
  );
}

final class EFont {}
