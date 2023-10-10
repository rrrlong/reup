import 'package:flutter/material.dart';
import 'package:reup/features/brand_page/widgets/top_bar_brand.dart';
import 'package:reup/features/common/product.dart';
import 'package:reup/features/common/styles.dart';
import 'package:reup/features/categories/widgets/buttons_categories.dart';

import 'package:reup/features/main/main.dart';

//TODO добавить поля в BrandItem1 и 2

class BrandPage2 extends StatelessWidget {
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
  BrandPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TopBarBrand(brandName: 'fuse'),
          Image.asset(
            'assets/images/reup_bp2_promo.jpg',
            height: 183,
            fit: BoxFit.fill,
          ),
          Container(
            height: 52,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              border: Border(
                  top: BorderSide(
                    color: Colors.black,
                  ),
                  bottom: BorderSide(
                    color: Colors.black,
                  )),
            ),
            child: Image.asset('assets/images/reup_brand_fuse.jpg'),
          ),
          const SizedBox(
            height: 20,
          ),
          BrandItem1(
            title: 'свитшотик',
            article:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor inci',
            img: Image.asset(
              'assets/images/reup_brand_fuse_item1.jpg',
              fit: BoxFit.fill,
            ),
          ),
          BrandItem2(
            img: Image.asset(
              'assets/images/reup_brand_fuse_item2.jpg',
              fit: BoxFit.fitWidth,
            ),
            title: 'джинсы нах',
            text:
                'orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.',
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              'заголовок',
              style: CustomTextStyle.headerTextStyle,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          ReupChoise(
            controllerReupChoise: PageController(initialPage: 0),
            color: const Color.fromARGB(255, 156, 182, 233),
            showMoreButton: false,
          ),
          const SizedBox(
            height: 16,
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
          const SizedBox(
            height: 48,
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Footer(),
          ),
        ]),
      ),
    );
  }
}

class BrandItem2 extends StatelessWidget {
  final Image img;
  final String title;
  final String text;
  const BrandItem2(
      {super.key, required this.img, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        img,
        Container(
          padding: const EdgeInsets.only(top: 4, bottom: 4),
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              border: Border(
                  top: BorderSide(color: Colors.black),
                  bottom: BorderSide(color: Colors.black))),
          child: Center(
            child: Text(
              title,
              style: CustomTextStyle.headerTextStyle,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'о нас',
                style: CustomTextStyle.headerTextStyle,
              ),
              const SizedBox(height: 16),
              Text(
                text,
                style: CustomButtonTextStyle.buttonBoldStyle,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: const ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BrandItem1 extends StatelessWidget {
  final String title;
  final String article;
  final Image img;
  const BrandItem1(
      {super.key,
      required this.title,
      required this.article,
      required this.img});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: CustomTextStyle.headerTextStyle,
          ),
          const SizedBox(height: 24),
          Text(
            article,
            style: CustomButtonTextStyle.buttonBoldStyle,
          ),
          const SizedBox(
            height: 16,
          ),
          img,
        ],
      ),
    );
  }
}
