import 'package:eternal_fire_static/core/import/theme_import.dart';
import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  const Gap({super.key, this.size = AppSize.size});
  final double size;
  @override
  Widget build(BuildContext context) {
    return SizedBox.square(dimension: size);
  }
}
