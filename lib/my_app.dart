part of 'main.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final AppRouter appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    _precacheImages(context);
    context.deviceSizeClass();

    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: ProjectConstant.projectName,
        theme: LightAppTheme.theme,
        themeMode: ThemeMode.light,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        routerConfig: appRouter.config(),
      ),
    );
  }
}

bool _isPreCache = false;

Future<void> _precacheImages(final BuildContext context) async {
  if (_isPreCache) return;
  _isPreCache = true;
  for (final EIcons icon in EIcons.values) {
    if (icon.type == EImageType.png) {
      precacheImage(AssetImage(icon.fullPath), context);
    } else if (icon.type == EImageType.svg) {
      final loader = SvgAssetLoader(icon.fullPath);
      svg.cache
          .putIfAbsent(loader.cacheKey(null), () => loader.loadBytes(null));
    }
  }

  for (final ELogo logo in ELogo.values) {
    if (logo.type == EImageType.png) {
      precacheImage(AssetImage(logo.fullPath), context);
    } else if (logo.type == EImageType.svg) {
      final loader = SvgAssetLoader(logo.fullPath);
      svg.cache
          .putIfAbsent(loader.cacheKey(null), () => loader.loadBytes(null));
    }
  }
}
