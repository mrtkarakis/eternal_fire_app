import 'package:auto_route/auto_route.dart';
import 'package:eternal_fire_static/core/import/shared_widget_import.dart';
import 'package:eternal_fire_static/core/util/enum/assets_enum.dart';
import 'package:eternal_fire_static/core/util/extension/buildContext/build_context_extension.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ImageWidget(
          path: ELogo.logoFg.fullPath,
          size: Size.square(context.minSize * 0.5),
        ),
      ),
    );
  }
}
