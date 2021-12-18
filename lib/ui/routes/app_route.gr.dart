// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flapp/ui/xxx/xxx_page.dart' as _i1;
import 'package:flutter/material.dart' as _i3;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    XXXRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.XXXPage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig('/#redirect',
            path: '/', redirectTo: '/xxx', fullMatch: true),
        _i2.RouteConfig(XXXRoute.name, path: '/xxx')
      ];
}

/// generated route for
/// [_i1.XXXPage]
class XXXRoute extends _i2.PageRouteInfo<void> {
  const XXXRoute() : super(XXXRoute.name, path: '/xxx');

  static const String name = 'XXXRoute';
}
