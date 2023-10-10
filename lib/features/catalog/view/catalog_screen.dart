import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reup/features/catalog/widgets/widgets.dart';
import 'package:reup/features/navigation/domain/entity/app_route_names.dart';

@RoutePage(
  name: AppRouteNames.catalogScreen,
)
class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
      ButtonsCarousel(),
      CategoriesTile(),
    ]);
  }
}
