import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:reup/features/cart/widgets/widgets.dart';
import 'package:reup/features/common/carousel.dart';
import 'package:reup/features/common/styles.dart';
import 'package:reup/features/navigation/domain/entity/app_route_names.dart';

@RoutePage(
  name: AppRouteNames.cartScreen,
)
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //CartBar(),
          items.isNotEmpty
              ? FilledCart(
                  items: items,
                )
              : const EmptyCart(),
          const SizedBox(
            height: 48,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'подобрали для тебя',
                style: CustomTextStyle.headerTextStyle,
                maxLines: 1,
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 8), child: Carousel())),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: IconButton(
                onPressed: null,
                icon: SvgPicture.asset('assets/icons/more_icon.svg'),
                iconSize: 64,
                style: const ButtonStyle(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'избранное',
                style: CustomTextStyle.headerTextStyle,
                maxLines: 1,
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 8), child: Carousel())),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: IconButton(
                onPressed: null,
                icon: SvgPicture.asset('assets/icons/more_icon.svg'),
                iconSize: 64,
                style: const ButtonStyle(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                textDirection: TextDirection.ltr,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: null,
                      child: const Text(
                        'Написать в поддержку',
                        style: CustomButtonTextStyle.basicStyle,
                      )),
                  const SizedBox(
                    height: 6,
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: null,
                      child: const Text('FAQ',
                          style: CustomButtonTextStyle.basicStyle)),
                  const SizedBox(
                    height: 6,
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: EdgeInsets.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: null,
                      child: const Text('Публичная оферта',
                          style: CustomButtonTextStyle.basicStyle)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: OutlinedButton(
                    onPressed: null,
                    style: OutlinedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side: const BorderSide(color: Colors.black, width: 1),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        )),
                    child: const Text('Стать продавцом',
                        style: CustomButtonTextStyle.buttonBoldStyle)),
              ),
            ),
          ])
        ],
      ),
    );
  }
}

// сюда должны попадать данные из бека
final List<ProductCartData> items = [
  ProductCartData(
      Image.asset('assets/images/reup_cart_product.jpg'),
      'топ Trendyol',
      'топ',
      'Befree',
      'цвет: черный',
      'размер: 46',
      10000,
      15000),
  ProductCartData(
      Image.asset('assets/images/reup_cart_product.jpg'),
      'топ Trendyol',
      'топ',
      'Befree',
      'цвет: черный',
      'размер: 46',
      10000,
      15000),
  ProductCartData(
      Image.asset('assets/images/reup_cart_product.jpg'),
      'топ Trendyol',
      'топ',
      'Befree',
      'цвет: черный',
      'размер: 46',
      10000,
      15000),
  ProductCartData(
      Image.asset('assets/images/reup_cart_product.jpg'),
      'топ Trendyol',
      'топ',
      'Befree',
      'цвет: черный',
      'размер: 46',
      10000,
      15000),
  ProductCartData(
      Image.asset('assets/images/reup_cart_product.jpg'),
      'топ Trendyol',
      'топ',
      'Befree',
      'цвет: черный',
      'размер: 46',
      10000,
      15000),
];
