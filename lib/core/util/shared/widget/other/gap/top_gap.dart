import 'package:flutter/material.dart';

import '../../../../../import/theme_import.dart';
import '../../../../../import/extension_import.dart';

class TopGap extends StatelessWidget {
  const TopGap({super.key, this.size = AppSize.size});

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: size + context.devicePadding.top);
  }
}
