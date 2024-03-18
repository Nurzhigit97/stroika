import 'package:auto_route/auto_route.dart';
import 'package:stroika/shared/app_router/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  AppRouter();

  @override
  List<AutoRoute> get routes => [
        // Auth routes
        AutoRoute(
          page: AuthNavigator.page,
          initial: true,
          children: [
            AutoRoute(page: UserTypeRoute.page, initial: true),
            AutoRoute(page: SignUpRoute.page),
          ],
        ),
      ];
}
