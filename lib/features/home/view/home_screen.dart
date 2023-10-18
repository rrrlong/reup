import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reup/assets/res/resources.dart';
import 'package:reup/features/common/widgets/image_widget.dart';
import 'package:reup/features/navigation/domain/entity/app_route_names.dart';
import 'package:reup/features/navigation/servise/router.dart';

@RoutePage(
  name: AppRouteNames.homeScreen,
)
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AutoTabsScaffold(
      routes: _routes,
      bottomNavigationBuilder: (context, _) {
        final tabsRouter = AutoTabsRouter.of(context);
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          selectedItemColor: theme.hintColor,
          unselectedItemColor: theme.primaryColor,

          /// for hide empty labels
          selectedFontSize: 0.0,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: _bottomNavigationBarItems,
        );
      },
    );
  }
}

const _routes = [
  MainRouter(),
  CatalogRouter(),
  CartRouter(),
  FavoritesRouter(),
  ProfileRouter(),
];

const _bottomNavigationBarItems = [
  BottomNavigationBarItem(
    icon: ImageWidget(
      SvgIcons.reupIcon,
    ),
    label: '',
  ),
  BottomNavigationBarItem(
    icon: ImageWidget(
      SvgIcons.catalogIcon,
    ),
    label: '',
  ),
  BottomNavigationBarItem(
    icon: ImageWidget(
      SvgIcons.cartIcon,
    ),
    label: '',
  ),
  BottomNavigationBarItem(
    icon: ImageWidget(SvgIcons.favoriteIcon),
    label: '',
  ),
  BottomNavigationBarItem(
    icon: ImageWidget(
      SvgIcons.profileIcon,
    ),
    label: '',
  ),
];
