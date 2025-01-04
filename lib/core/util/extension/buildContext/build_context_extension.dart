import 'dart:math';

import 'package:flutter/material.dart';

import '../../../import/enum_import.dart';
import '../../../import/theme_import.dart';

extension BuildContextExtension on BuildContext {
  void showSnackBar(
    final String text, {
    final bool hideCureentBar = true,
    final ESnackBarType type = ESnackBarType.error,
  }) {
    if (!mounted) return;

    if (text.trim().isEmpty) return;

    if (hideCureentBar) removeSnackbar();
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        clipBehavior: Clip.none,
        behavior: SnackBarBehavior.floating,
        closeIconColor: type.foregroundColor(this),
        showCloseIcon: true,
        dismissDirection: DismissDirection.vertical,
        content: Text(
          text,
          style: TextStyle(color: type.foregroundColor(this)),
        ),
        backgroundColor: type.backgroundColor(this),
        duration: AppDuration.sec1 * 3,
      ),
    );
  }

  void removeSnackbar() => ScaffoldMessenger.of(this).removeCurrentSnackBar();

  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;
  Size get deviceSize => MediaQuery.sizeOf(this);

  double get minSize => min(deviceSize.width, deviceSize.height);

  EdgeInsets get devicePadding =>
      MediaQueryData.fromView(View.of(this)).padding;

  MediaQueryData get forceTextStyle => MediaQuery.of(this)
      .copyWith(boldText: false, textScaler: TextScaler.noScaling);

  EDeviceSizeClass deviceSizeClass() {
    final result = EDeviceSizeClass.fromWidth(minSize);

    EDeviceSizeClass.device = result;
    return result;
  }
}
