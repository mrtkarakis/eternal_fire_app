enum EDeviceSizeClass {
  compact(maxWidth: 600),
  medium(maxWidth: 840),
  expanded(maxWidth: 1200),
  large(maxWidth: 1600),
  extraLarge(maxWidth: double.infinity);

  final num maxWidth;

  const EDeviceSizeClass({required this.maxWidth});

  static EDeviceSizeClass device = EDeviceSizeClass.compact;

  factory EDeviceSizeClass.fromWidth(final num width) {
    for (var element in EDeviceSizeClass.values) {
      if (element.maxWidth < width) continue;
      return element;
    }

    return EDeviceSizeClass.compact;
  }

  bool get isSmallerThanMedium => this < EDeviceSizeClass.medium;

  bool get isCompact => this == EDeviceSizeClass.compact;
  bool get isMedium => this == EDeviceSizeClass.medium;
  bool get isExpanded => this == EDeviceSizeClass.expanded;
  bool get isLarge => this == EDeviceSizeClass.large;
  bool get isExtraLarge => this == EDeviceSizeClass.extraLarge;

  bool operator <(covariant EDeviceSizeClass e) => e.maxWidth > maxWidth;
  bool operator >(covariant EDeviceSizeClass e) => e.maxWidth < maxWidth;
}
