import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reup/assets/res/resources.dart';
import 'package:reup/features/common/product.dart';
import 'package:reup/features/common/styles.dart';
import 'package:reup/features/common/widgets/image_widget.dart';
import 'package:reup/features/favorites/widgets/widgets.dart';
import 'package:reup/features/navigation/domain/entity/app_route_names.dart';

@RoutePage(
  name: AppRouteNames.favoritesScreen,
)
class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: const Center(
              child: Text(
                'избранное',
                style: CustomTextStyle.reupCartName,
                maxLines: 1,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          items.isEmpty
              ? const EmptyFavorites()
              : FilledFavorites(
                  items: items,
                ),
        ],
      ),
    );
  }
}

final List<ProductData> items = [
  ProductData(
    const ImageWidget(Images.reupProduct),
    // Image.asset('assets/images/reup_product.jpg'),
    'befree',
    'Блузка женская Лейди',
    '7500₽',
  ),
  ProductData(
    const ImageWidget(Images.reupProduct),
    // Image.asset('assets/images/reup_product.jpg'),
    'befree',
    'Блузка женская Лейди',
    '7500₽',
  ),
  ProductData(
    const ImageWidget(Images.reupProduct),
    // Image.asset('assets/images/reup_product.jpg'),
    'befree',
    'Блузка женская Лейди',
    '7500₽',
  ),
  ProductData(
    const ImageWidget(Images.reupProduct),
    // Image.asset('assets/images/reup_product.jpg'),
    'befree',
    'Блузка женская Лейди',
    '7500₽',
  ),
  ProductData(
    const ImageWidget(Images.reupProduct),
    // Image.asset('assets/images/reup_product.jpg'),
    'befree',
    'Блузка женская Лейди',
    '7500₽',
  ),
  ProductData(
    const ImageWidget(Images.reupProduct),
    // Image.asset('assets/images/reup_product.jpg'),
    'befree',
    'Блузка женская Лейди',
    '7500₽',
  ),
];
