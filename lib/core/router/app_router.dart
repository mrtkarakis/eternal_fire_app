import 'package:auto_route/auto_route.dart';

import '../../page/splash/splash_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "Page,Route")
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
          path: "/splash",
          initial: true,
        ),
      ];
}
