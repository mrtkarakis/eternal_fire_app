enum EIcons {
  null1(name: "null1", type: EImageType.svg);

  final String name;
  final EImageType type;

  const EIcons({
    required this.name,
    required this.type,
  });

  String get path => "$name.${type.name}";
  String get withFileName => "icon/$path";
  String get fullPath => "assets/$withFileName";
}

enum ELogo {
  logo(name: "logo", type: EImageType.png);

  final String name;
  final EImageType type;

  const ELogo({
    required this.name,
    required this.type,
  });

  String get path => "$name.${type.name}";
  String get withFileName => "logo/$path";
  String get fullPath => "assets/$withFileName";
}

enum EFlag {
  gb(name: "gb", type: EImageType.svg),
  tr(name: "tr", type: EImageType.svg);

  final String name;
  final EImageType type;

  const EFlag({
    required this.name,
    required this.type,
  });

  String get path => "$name.${type.name}";
  String get withFileName => "flag/$path";
  String get fullPath => "assets/$withFileName";
}

enum EImageType {
  png,
  jpg,
  svg,
  network,
  file,
  memory,
  error,
}
