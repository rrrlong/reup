import 'package:auto_route/auto_route.dart';
import 'package:reup/features/navigation/domain/entity/app_route_paths.dart';
import 'package:reup/features/navigation/domain/entity/cart/cart_routes.dart';
import 'package:reup/features/navigation/domain/entity/catalog/catalog_routes.dart';
import 'package:reup/features/navigation/domain/entity/favorites/favorites_routes.dart';
import 'package:reup/features/navigation/domain/entity/main/main_routes.dart';
import 'package:reup/features/navigation/domain/entity/profile/profile_routes.dart';
import 'package:reup/features/navigation/servise/router.dart';

/// All routes for the home feature.
final homeRoutes = AutoRoute(
  page: HomeRouter.page,
  path: AppRoutePaths.homeScreen,
  initial: true,
  children: [
    mainRoutes,
    catalogRoutes,
    cartRoutes,
    favoritesRoutes,
    profileRoutes,
  ],
);
