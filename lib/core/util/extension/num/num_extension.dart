extension NumExtension on num {
  String get simplifyNumber {
    for (var element in _ESimplifyNumber.values) {
      if (this >= element.value) {
        return "${(this / element.value).toStringAsFixed(1)}${element.key}";
      }
    }
    if (this == toInt()) {
      return toString();
    }

    return toStringAsFixed(2);
  }
}

enum _ESimplifyNumber {
  t,
  b,
  m,
  k;

  int get value {
    switch (this) {
      case _ESimplifyNumber.t:
        return 1000000000000;
      case _ESimplifyNumber.b:
        return 1000000000;
      case _ESimplifyNumber.m:
        return 1000000;
      case _ESimplifyNumber.k:
        return 1000;
    }
  }

  String get key {
    switch (this) {
      case _ESimplifyNumber.t:
        return "T";
      case _ESimplifyNumber.b:
        return "B";
      case _ESimplifyNumber.m:
        return "M";
      case _ESimplifyNumber.k:
        return "K";
    }
  }
}
