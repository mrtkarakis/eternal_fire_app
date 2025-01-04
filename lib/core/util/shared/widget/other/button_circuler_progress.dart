import 'package:flutter/material.dart';

import '../../../../import/extension_import.dart';

class ButtonCircularProgress extends StatelessWidget {
  const ButtonCircularProgress({
    super.key,
    required this.isLoading,
    required this.text,
    this.size = 23,
    this.strokeWidth = 2,
    this.color,
    this.textAlign,
  });
  final bool isLoading;
  final String text;
  final double size;
  final double strokeWidth;
  final Color? color;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SizedBox.square(
            dimension: size,
            child: CircularProgressIndicator(
              color: color ?? context.colorScheme.primary,
              strokeWidth: strokeWidth,
            ),
          )
        : Text(
            text,
            textAlign: textAlign,
          );
  }
}
