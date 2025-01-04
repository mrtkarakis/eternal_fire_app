import 'package:flutter/material.dart' show BorderRadius, Radius;

final class AppRadius {
  static const BorderRadius zero = BorderRadius.zero;
  static const BorderRadius r2 = BorderRadius.all(Radius.circular(2));
  static const BorderRadius r4 = BorderRadius.all(Radius.circular(4));
  static const BorderRadius r6 = BorderRadius.all(Radius.circular(6));
  static const BorderRadius r8 = BorderRadius.all(Radius.circular(8));
  static const BorderRadius r10 = BorderRadius.all(Radius.circular(10));
  static const BorderRadius r12 = BorderRadius.all(Radius.circular(12));
  static const BorderRadius r14 = BorderRadius.all(Radius.circular(14));
  static const BorderRadius r16 = BorderRadius.all(Radius.circular(16));
  static const BorderRadius r18 = BorderRadius.all(Radius.circular(18));
  static const BorderRadius r20 = BorderRadius.all(Radius.circular(20));
  static const BorderRadius r30 = BorderRadius.all(Radius.circular(30));
  static const BorderRadius r9999 = BorderRadius.all(Radius.circular(9999));

  static Radius radius(final double value) => Radius.circular(value);

  static top(final BorderRadius value) =>
      BorderRadius.vertical(top: value.topLeft);
  static bottom(final BorderRadius value) =>
      BorderRadius.vertical(bottom: value.bottomLeft);
  static left(final BorderRadius value) =>
      BorderRadius.horizontal(left: value.topLeft);
  static rigth(final BorderRadius value) =>
      BorderRadius.horizontal(right: value.bottomRight);
}
