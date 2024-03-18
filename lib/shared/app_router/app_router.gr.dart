// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:stroika/features/auth/presentation/auth_navigator.dart' as _i1;
import 'package:stroika/features/auth/presentation/pages/sign_up/sign_up_executor_page.dart'
    as _i2;
import 'package:stroika/features/auth/presentation/pages/sign_up/sign_up_order_page.dart'
    as _i3;
import 'package:stroika/features/auth/presentation/pages/sign_up/sign_up_page.dart'
    as _i4;
import 'package:stroika/features/auth/presentation/pages/user_type/user_type_page.dart'
    as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AuthNavigator.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthNavigator(),
      );
    },
    SignUpExecutorRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SignUpExecutorPage(),
      );
    },
    SignUpOrderRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SignUpOrderPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SignUpPage(),
      );
    },
    UserTypeRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.UserTypePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthNavigator]
class AuthNavigator extends _i6.PageRouteInfo<void> {
  const AuthNavigator({List<_i6.PageRouteInfo>? children})
      : super(
          AuthNavigator.name,
          initialChildren: children,
        );

  static const String name = 'AuthNavigator';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SignUpExecutorPage]
class SignUpExecutorRoute extends _i6.PageRouteInfo<void> {
  const SignUpExecutorRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SignUpExecutorRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpExecutorRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SignUpOrderPage]
class SignUpOrderRoute extends _i6.PageRouteInfo<void> {
  const SignUpOrderRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SignUpOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpOrderRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SignUpPage]
class SignUpRoute extends _i6.PageRouteInfo<void> {
  const SignUpRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.UserTypePage]
class UserTypeRoute extends _i6.PageRouteInfo<void> {
  const UserTypeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          UserTypeRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserTypeRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
