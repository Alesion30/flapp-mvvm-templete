import 'package:auto_route/auto_route.dart';
import 'package:flapp/ui/routes/route_path.dart';
import 'package:flapp/ui/xxx/xxx_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      path: RoutePath.appRouteXXX,
      page: XXXPage,
      initial: true,
    ),
  ],
)
class $AppRouter {}
