import 'package:auto_route/auto_route.dart';
import 'package:reup/features/navigation/domain/entity/app_route_paths.dart';
import 'package:reup/features/navigation/servise/router.dart';

/// All routes for the favorites feature.
final favoritesRoutes = AutoRoute(
  page: FavoritesRouter.page,
  path: AppRoutePaths.favoritesPath,
);
