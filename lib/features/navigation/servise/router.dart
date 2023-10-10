import 'package:auto_route/auto_route.dart';
import 'package:reup/features/cart/view/cart_screen.dart';
import 'package:reup/features/catalog/view/catalog_screen.dart';
import 'package:reup/features/favorites/view/favorites_screen.dart';
import 'package:reup/features/home/view/home_screen.dart';
import 'package:reup/features/main/view/main_screen.dart';
import 'package:reup/features/navigation/domain/entity/home/home_routes.dart';
import 'package:reup/features/navigation/domain/entity/splash/splash_routes.dart';
import 'package:reup/features/profile/view/profile_screen.dart';
import 'package:reup/features/splash/view/splash_screen.dart';

part 'router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'ScreenWidget|Screen,Route',
)

/// Main point of the application navigation.
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        homeRoutes,
      ];
}
