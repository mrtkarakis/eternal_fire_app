import 'package:easy_localization/easy_localization.dart';
import 'package:eternal_fire_static/core/import/extension_import.dart';
import 'package:eternal_fire_static/core/private/env_service.dart';
import 'package:eternal_fire_static/core/router/app_router.dart';
import 'package:eternal_fire_static/core/service/localStorage/local_storage_service.dart';
import 'package:eternal_fire_static/core/util/localization/localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'core/import/constant_import.dart';
import 'core/import/enum_import.dart';
import 'core/import/theme_import.dart';

part 'my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvService.load();
  await ELocalStorage.init();

  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      path: ELocalization.path,
      supportedLocales: ELocalization.locales,
      fallbackLocale: ELocalization.locales.first,
      child: const MyApp(),
    ),
  );
}
