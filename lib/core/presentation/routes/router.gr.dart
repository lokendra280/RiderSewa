// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../../../features/auth/login_page/login_page.dart' as _i2;
import '../../../features/services/contact_page/contact_page.dart' as _i8;
import '../../../features/services/history_page/history_page.dart' as _i4;
import '../../../features/services/home_page/home_page.dart' as _i3;
import '../../../features/services/message_page/champaigns.dart' as _i7;
import '../../../features/services/message_page/inbox_page.dart' as _i6;
import '../../../features/services/message_page/message_page.dart' as _i5;
import '../../../features/splash_page/splash_page.dart' as _i1;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.LoginPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    HistoryRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.HistoryPage(),
      );
    },
    MessageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.MessagePage(),
      );
    },
    InboxRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.InboxPage(),
      );
    },
    ChampaignsRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ChampaignsPage(),
      );
    },
    ContactRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.ContactPage(),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i9.RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        _i9.RouteConfig(
          HomeRoute.name,
          path: '/home-page',
        ),
        _i9.RouteConfig(
          HistoryRoute.name,
          path: '/history-page',
        ),
        _i9.RouteConfig(
          MessageRoute.name,
          path: '/message-page',
        ),
        _i9.RouteConfig(
          InboxRoute.name,
          path: '/inbox-page',
        ),
        _i9.RouteConfig(
          ChampaignsRoute.name,
          path: '/champaigns-page',
        ),
        _i9.RouteConfig(
          ContactRoute.name,
          path: '/contact-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.LoginPage]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-page',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.HistoryPage]
class HistoryRoute extends _i9.PageRouteInfo<void> {
  const HistoryRoute()
      : super(
          HistoryRoute.name,
          path: '/history-page',
        );

  static const String name = 'HistoryRoute';
}

/// generated route for
/// [_i5.MessagePage]
class MessageRoute extends _i9.PageRouteInfo<void> {
  const MessageRoute()
      : super(
          MessageRoute.name,
          path: '/message-page',
        );

  static const String name = 'MessageRoute';
}

/// generated route for
/// [_i6.InboxPage]
class InboxRoute extends _i9.PageRouteInfo<void> {
  const InboxRoute()
      : super(
          InboxRoute.name,
          path: '/inbox-page',
        );

  static const String name = 'InboxRoute';
}

/// generated route for
/// [_i7.ChampaignsPage]
class ChampaignsRoute extends _i9.PageRouteInfo<void> {
  const ChampaignsRoute()
      : super(
          ChampaignsRoute.name,
          path: '/champaigns-page',
        );

  static const String name = 'ChampaignsRoute';
}

/// generated route for
/// [_i8.ContactPage]
class ContactRoute extends _i9.PageRouteInfo<void> {
  const ContactRoute()
      : super(
          ContactRoute.name,
          path: '/contact-page',
        );

  static const String name = 'ContactRoute';
}
