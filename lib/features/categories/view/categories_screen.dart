import 'package:flutter/material.dart';
import 'package:reup/features/common/styles.dart';
import 'package:reup/features/common/product.dart';
import 'package:reup/features/categories/widgets/top_bar_categories.dart';
import 'package:reup/features/categories/widgets/buttons_categories.dart';

class Categories extends StatelessWidget {
  final List<ProductData> items = [
    ProductData(Image.asset('assets/images/reup_product.jpg'), 'befree',
        'Блузка женская Лейди', '7500₽'),
    ProductData(Image.asset('assets/images/reup_product.jpg'), 'befree',
        'Блузка женская Лейди', '7500₽'),
    ProductData(Image.asset('assets/images/reup_product.jpg'), 'befree',
        'Блузка женская Лейди', '7500₽'),
    ProductData(Image.asset('assets/images/reup_product.jpg'), 'befree',
        'Блузка женская Лейди', '7500₽'),
    ProductData(Image.asset('assets/images/reup_product.jpg'), 'befree',
        'Блузка женская Лейди', '7500₽'),
    ProductData(Image.asset('assets/images/reup_product.jpg'), 'befree',
        'Блузка женская Лейди', '7500₽')
  ];

  Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const TopBarCategories(),
            Image.asset(
              'assets/images/vintage.jpg',
              height: 122,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
            const ButtonsCategories(),
            GridView.count(
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.all(16),
                crossAxisCount: 2,
                primary: false,
                shrinkWrap: true,
                childAspectRatio: 0.6,
                crossAxisSpacing: 8,
                mainAxisSpacing: 16,
                children: List.generate(
                  items.length,
                  (index) {
                    return Product(data: items[index]);
                  },
                )),
          ],
        ),
      ),
    );
  }
}
