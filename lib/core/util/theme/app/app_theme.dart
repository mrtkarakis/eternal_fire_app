import 'package:flutter/material.dart';

import 'app_color.dart';
import 'app_radius.dart';
import 'app_size.dart';
import 'app_text_style.dart';

final class LightAppTheme {
  static final ThemeData theme = ThemeData(
    useMaterial3: true,
    splashColor: AppColor.transparent,
    highlightColor: AppColor.transparent,
    scaffoldBackgroundColor: LightAppColor.backgroundColor,
    elevatedButtonTheme: elevatedButton,
    textButtonTheme: textButton,
    outlinedButtonTheme: outlinedButton,
    filledButtonTheme: filledButton,
    inputDecorationTheme: inputDecoration,
    appBarTheme: appBarTheme,
    textTheme: textTheme,
    indicatorColor: LightAppColor.primary1,
    primaryColor: LightAppColor.primary1,
    dividerTheme:
        const DividerThemeData(color: LightAppColor.primary1, space: 0.5),
    colorScheme: const ColorScheme.light(
      brightness: Brightness.light,
      primary: LightAppColor.primary1,
      onPrimary: LightAppColor.white,
      primaryContainer: LightAppColor.primary2,
      secondary: LightAppColor.primary3,
      onSecondary: AppColor.white,
      secondaryContainer: LightAppColor.primary4,
      error: LightAppColor.red,
      onError: LightAppColor.white,
      onTertiary: LightAppColor.gray1,
      onTertiaryContainer: LightAppColor.gray2,
      tertiary: LightAppColor.gray3,
      surfaceContainer: LightAppColor.gray4,
      tertiaryContainer: LightAppColor.gray5,
      tertiaryFixed: LightAppColor.gray6,
      tertiaryFixedDim: LightAppColor.gray7,
      onTertiaryFixed: LightAppColor.gray8,
      onTertiaryFixedVariant: LightAppColor.gray9,
      surfaceTint: LightAppColor.gray10,
      surfaceDim: LightAppColor.gray11,
      outline: LightAppColor.darkGray1,
      onSurfaceVariant: LightAppColor.darkGray2,
      outlineVariant: LightAppColor.darkGray3,
      surface: LightAppColor.backgroundColor,
      onSurface: LightAppColor.white,
      shadow: LightAppColor.black,
    ),
  );

  static final ElevatedButtonThemeData elevatedButton = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: LightAppColor.primary1,
      foregroundColor: LightAppColor.white,
      disabledBackgroundColor: LightAppColor.gray1,
      disabledForegroundColor: LightAppColor.gray2,
      minimumSize: const Size(105, AppSize.buttonHeight),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: AppRadius.r8),
      textStyle: LightAppTextStyle.bodyLarge,
    ),
  );

  static final FilledButtonThemeData filledButton = FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: LightAppColor.primary1,
      foregroundColor: LightAppColor.white,
      disabledBackgroundColor: LightAppColor.gray1,
      disabledForegroundColor: LightAppColor.gray2,
      minimumSize: const Size(105, AppSize.buttonHeight),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: AppRadius.r8),
      textStyle: LightAppTextStyle.bodyLarge,
    ),
  );

  static final TextButtonThemeData textButton = TextButtonThemeData(
    style: TextButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: AppRadius.r8),
      textStyle: LightAppTextStyle.bodyLarge,
      minimumSize: const Size(105, AppSize.buttonHeight),
    ),
  );

  static final OutlinedButtonThemeData outlinedButton = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: LightAppColor.primary1,
      shape: RoundedRectangleBorder(borderRadius: AppRadius.r8),
      minimumSize: const Size(105, AppSize.buttonHeight),
      textStyle: LightAppTextStyle.bodyLarge,
      side: const BorderSide(color: LightAppColor.primary1, width: 1),
    ),
  );

  static const InputDecorationTheme inputDecoration = InputDecorationTheme(
    border: InputBorder.none,
    focusedBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    errorBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
    contentPadding: EdgeInsets.zero,
  );

  static const AppBarTheme appBarTheme = AppBarTheme(
    backgroundColor: LightAppColor.white,
    elevation: 0.4,
    foregroundColor: LightAppColor.black,
  );

  static const TextTheme textTheme = TextTheme(
    displaySmall: LightAppTextStyle.displaySmall,
    headlineSmall: LightAppTextStyle.headlineSmall,
    titleLarge: LightAppTextStyle.titleLarge,
    titleMedium: LightAppTextStyle.titleMedium,
    labelLarge: LightAppTextStyle.labelLarge,
    labelMedium: LightAppTextStyle.labelMedium,
    bodyLarge: LightAppTextStyle.bodyLarge,
    bodyMedium: LightAppTextStyle.bodyMedium,
    bodySmall: LightAppTextStyle.bodySmall,
  );
}
