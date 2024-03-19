// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:stroika/features/auth/presentation/auth_navigator.dart' as _i1;
import 'package:stroika/features/auth/presentation/pages/sign_in/sign_in_page.dart'
    as _i7;
import 'package:stroika/features/auth/presentation/pages/sign_up/sign_up_executor_page.dart'
    as _i8;
import 'package:stroika/features/auth/presentation/pages/sign_up/sign_up_order_page.dart'
    as _i9;
import 'package:stroika/features/auth/presentation/pages/sign_up/sign_up_page.dart'
    as _i10;
import 'package:stroika/features/auth/presentation/pages/user_type/user_type_page.dart'
    as _i11;
import 'package:stroika/features/chat/presentation/pages/chat_page.dart' as _i2;
import 'package:stroika/features/favourite/presentation/pages/favourite_page.dart'
    as _i3;
import 'package:stroika/features/main/presentation/pages/home/home_page.dart'
    as _i4;
import 'package:stroika/features/main/presentation/pages/main_navigator.dart'
    as _i5;
import 'package:stroika/features/profile/presentation/pages/profile_page.dart'
    as _i6;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    AuthNavigator.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuthNavigator(),
      );
    },
    ChatRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ChatPage(),
      );
    },
    FavouriteRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.FavouritePage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    MainNavigator.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MainNavigator(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ProfilePage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SignInPage(),
      );
    },
    SignUpExecutorRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SignUpExecutorPage(),
      );
    },
    SignUpOrderRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SignUpOrderPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SignUpPage(),
      );
    },
    UserTypeRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.UserTypePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuthNavigator]
class AuthNavigator extends _i12.PageRouteInfo<void> {
  const AuthNavigator({List<_i12.PageRouteInfo>? children})
      : super(
          AuthNavigator.name,
          initialChildren: children,
        );

  static const String name = 'AuthNavigator';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ChatPage]
class ChatRoute extends _i12.PageRouteInfo<void> {
  const ChatRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i3.FavouritePage]
class FavouriteRoute extends _i12.PageRouteInfo<void> {
  const FavouriteRoute({List<_i12.PageRouteInfo>? children})
      : super(
          FavouriteRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavouriteRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MainNavigator]
class MainNavigator extends _i12.PageRouteInfo<void> {
  const MainNavigator({List<_i12.PageRouteInfo>? children})
      : super(
          MainNavigator.name,
          initialChildren: children,
        );

  static const String name = 'MainNavigator';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ProfilePage]
class ProfileRoute extends _i12.PageRouteInfo<void> {
  const ProfileRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SignInPage]
class SignInRoute extends _i12.PageRouteInfo<void> {
  const SignInRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SignUpExecutorPage]
class SignUpExecutorRoute extends _i12.PageRouteInfo<void> {
  const SignUpExecutorRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SignUpExecutorRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpExecutorRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SignUpOrderPage]
class SignUpOrderRoute extends _i12.PageRouteInfo<void> {
  const SignUpOrderRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SignUpOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpOrderRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SignUpPage]
class SignUpRoute extends _i12.PageRouteInfo<void> {
  const SignUpRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.UserTypePage]
class UserTypeRoute extends _i12.PageRouteInfo<void> {
  const UserTypeRoute({List<_i12.PageRouteInfo>? children})
      : super(
          UserTypeRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserTypeRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}
