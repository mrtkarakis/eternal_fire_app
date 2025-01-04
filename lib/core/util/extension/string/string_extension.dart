extension StringExtension on String {
  String get capitalize {
    return length > 1
        ? "${this[0].toUpperCase()}${substring(1)}"
        : toUpperCase();
  }

  String get with0 => padLeft(2, "0");

  String maxSize(final int size) =>
      length > size ? substring(0, size) : substring(0, length);

  String passwordInvisible({
    final int invisibleCharacterLength = 4,
    final bool symbolWithSpace = false,
  }) {
    final String symbol =
        "*${symbolWithSpace ? ' ' : ''}" * invisibleCharacterLength;
    final int visibleCharacterLength = length - invisibleCharacterLength;

    return substring(0, visibleCharacterLength ~/ 2) +
        (symbolWithSpace ? " " : "") +
        symbol +
        substring(length - (visibleCharacterLength ~/ 2));
  }

  String get camelCaseToString {
    if (toLowerCase() == this) return this;

    final RegExp exp = RegExp(r'(?<=[a-z])[A-Z]');

    return replaceAllMapped(exp, (Match m) => (' ${m.group(0)}')).capitalize;
  }

  String get snakeCaseToString {
    final RegExp exp = RegExp('_');

    return replaceAllMapped(exp, (Match m) => (' ')).capitalize;
  }

  bool get isDigit {
    if (isEmpty) return false;

    return int.tryParse(this) != null;
  }
}
