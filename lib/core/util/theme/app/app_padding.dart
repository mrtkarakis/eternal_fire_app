import 'package:flutter/material.dart' show EdgeInsets;

import 'app_size.dart';

final class AppPadding {
  static const EdgeInsets zero = EdgeInsets.zero;

  static const EdgeInsets top = EdgeInsets.only(top: AppSize.size);
  static const EdgeInsets bottom = EdgeInsets.only(bottom: AppSize.size);
  static const EdgeInsets left = EdgeInsets.only(left: AppSize.size);
  static const EdgeInsets right = EdgeInsets.only(right: AppSize.size);

  static const EdgeInsets vertical =
      EdgeInsets.symmetric(vertical: AppSize.size);

  static const EdgeInsets horizontal =
      EdgeInsets.symmetric(horizontal: AppSize.size);

  static const EdgeInsets all = EdgeInsets.all(AppSize.size);
  static const EdgeInsets halfAll = EdgeInsets.all(AppSize.halfSize);
}
