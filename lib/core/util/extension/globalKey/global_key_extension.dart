import 'package:flutter/material.dart';

extension GlobalKeyExtension on GlobalKey {
  Size? getSize() {
    final RenderBox? renderBox =
        currentContext?.findRenderObject() as RenderBox?;
    final Size? size = renderBox?.size;

    return size;
  }

  Offset? getPosition() {
    final RenderBox? renderBoxRed =
        currentContext?.findRenderObject() as RenderBox?;
    final Offset? position = renderBoxRed?.localToGlobal(Offset.zero);
    return position;
  }
}
