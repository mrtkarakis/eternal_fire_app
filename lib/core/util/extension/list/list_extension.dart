extension ListExtension on List {
  dynamic trustedIndex(final int index) => this[index % length];
}
