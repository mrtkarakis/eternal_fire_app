import 'package:flutter/material.dart';

import '../../import/enum_import.dart';

enum ELocalization {
  en(locale: Locale("en")),
  tr(locale: Locale("tr"));

  final Locale locale;
  const ELocalization({required this.locale});

  static List<Locale> locales =
      ELocalization.values.map((e) => e.locale).toList();

  static String path = "assets/localization";

  String get label {
    switch (this) {
      case ELocalization.en:
        return "English";
      case ELocalization.tr:
        return "Türkçe";
    }
  }

  EFlag get flag {
    switch (this) {
      case ELocalization.en:
        return EFlag.gb;
      case ELocalization.tr:
        return EFlag.tr;
    }
  }

  bool get isTr => this == ELocalization.tr;
  bool get isEn => this == ELocalization.en;
}

extension LocaleExtension on Locale {
  ELocalization get eLocalization {
    return ELocalization.values.firstWhere(
      (e) => (e.locale == this),
      orElse: () => ELocalization.en,
    );
  }
}
