import 'package:flutter/material.dart';

import '../../../../../import/theme_import.dart';
import '../../../../../import/extension_import.dart';

class BottomGap extends StatelessWidget {
  const BottomGap({super.key, this.size = AppSize.size});

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: size + context.devicePadding.bottom);
  }
}
