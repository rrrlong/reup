import 'package:flutter/material.dart';
import 'package:reup/features/brand_page/widgets/top_bar_brand.dart';
import 'package:reup/features/common/product.dart';
import 'package:reup/features/common/styles.dart';
import 'package:reup/features/categories/widgets/buttons_categories.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/getwidget.dart';
import 'package:reup/features/brand_page/widgets/chip.dart';
import 'package:reup/features/brand_page/widgets/ad_brand_text.dart';
import 'package:reup/features/main/main.dart';

class BrandPage1Data {
  final String brandname; // строка названия бренда в самом верху
  final Image imgpromo; // первая большая картинка бренда
  final List<String> categories; // массив топ катеогрий бренда
  final String ad1promo; // заголовок первого блока
  final String ad1text; // текст второго блока
  final String ad2promo; // заголовок второго блока
  final String ad2text; // текст второго блока
  final Image imgbrand1; // картинка бренда 1
  final Image imgbrand2; // картинка бренда 2
  final Image imgpromo2; // большая картинка бренда в конце
  final List<ProductData> items; // товары бренда

  BrandPage1Data(
      this.brandname,
      this.imgpromo,
      this.categories,
      this.ad1promo,
      this.ad1text,
      this.ad2promo,
      this.ad2text,
      this.imgbrand1,
      this.imgbrand2,
      this.imgpromo2,
      this.items);
}

class BrandPage1 extends StatefulWidget {
  BrandPage1({super.key});

  @override
  State<BrandPage1> createState() => _BrandPage1State();
}

class _BrandPage1State extends State<BrandPage1> {
  final BrandPage1Data data = BrandPage1Data(
      '.solutions',
      Image.asset(
        'assets/images/reup_bp1_promo.jpg',
        fit: BoxFit.fitWidth,
      ),
      ['штаны', 'втулка', 'береза', 'хайпбист', 'кандибобер'],
      'заголовок 1',
      'текстовый блок 1',
      'заголовок 2',
      'текстовый блок 2',
      Image.asset(
        'assets/images/reup_bp1_ad1.1.jpg',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/reup_bp1_ad1.2.jpg',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'assets/images/reup_bp1_promo2.jpg',
      ),
      [
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
      ]);

  // final List<ProductData> items = [
  //   ProductData(Image.asset('assets/images/reup_product.jpg'), 'befree',
  //       'Блузка женская Лейди', '7500₽'),
  //   ProductData(Image.asset('assets/images/reup_product.jpg'), 'befree',
  //       'Блузка женская Лейди', '7500₽'),
  //   ProductData(Image.asset('assets/images/reup_product.jpg'), 'befree',
  //       'Блузка женская Лейди', '7500₽'),
  //   ProductData(Image.asset('assets/images/reup_product.jpg'), 'befree',
  //       'Блузка женская Лейди', '7500₽'),
  //   ProductData(Image.asset('assets/images/reup_product.jpg'), 'befree',
  //       'Блузка женская Лейди', '7500₽'),
  //   ProductData(Image.asset('assets/images/reup_product.jpg'), 'befree',
  //       'Блузка женская Лейди', '7500₽')
  // ];
  // final List<String> categories = [
  //   'штаны',
  //   'втулка',
  //   'береза',
  //   'хайпбист',
  //   'кандибобер'
  // ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBarBrand(brandName: data.brandname),
            SizedBox(
              height: 183,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  data.imgpromo,
                  // Image.asset(
                  //   'assets/images/reup_bp1_promo.jpg',
                  //   fit: BoxFit.fitWidth,
                  // ),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        '.solutions',
                        style: CustomTextStyle.headerTextStyle,
                      )),
                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'о нас',
                          style: CustomTextStyle.reupWhite,
                        ),
                        const SizedBox(width: 12),
                        SvgPicture.asset(
                          'assets/icons/reup_icon_forward_arrow.svg',
                          width: 16,
                          height: 16,
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'категории товаров',
                    style: CustomTextStyle.headerTextStyle,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    onTap: null,
                    child: Row(
                      children: [
                        const Text(
                          'больше',
                          style: CustomButtonTextStyle.buttonBoldStyle,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        SvgPicture.asset(
                          'assets/icons/reup_icon_forward_arrow.svg',
                          width: 16,
                          height: 16,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return ReupChip(text: data.categories[index]);
                  }),
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(width: 0);
                  },
                  itemCount: 5),
            ),
            const SizedBox(
              height: 16,
            ),
            AdBrandText(
              header: data.ad1promo, //'готовимся к лету',
              text: data.ad1text, //'текстовый блок 1',
              color: Color.fromARGB(255, 121, 145, 245),
              ontap: (() {}),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: data.imgbrand1,
                  // Image.asset(
                  //   'assets/images/reup_bp1_ad1.1.jpg',
                  //   fit: BoxFit.fill,
                  // )
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 1,
                  child: data.imgbrand2,
                  //  Image.asset(
                  //   'assets/images/reup_bp1_ad1.2.jpg',
                  //   fit: BoxFit.fill,
                  // )
                )
              ],
            ),
            AdBrandText(
              header: data.ad2promo, //'header2',
              text: data.ad2text, //'текстовый блок 2',
              color: Colors.white,
              ontap: (() {}),
            ),
            SizedBox(
              height: 190,
              child: Stack(
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 179,
                      child: data.imgpromo2),
                  // Image.asset(
                  //   'assets/images/reup_bp1_promo2.jpg',
                  //   width: MediaQuery.of(context).size.width,
                  //   height: 179,
                  // ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'todayismyanotherday',
                        style: CustomTextStyle.subtitlePromoTextStyle,
                      )),
                  //)
                ],
              ),
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
                  data.items.length,
                  (index) {
                    return Product(data: data.items[index]);
                  },
                )),
            const SizedBox(
              height: 48,
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Footer(),
            ),
          ],
        ),
      ),
    );
  }
}
