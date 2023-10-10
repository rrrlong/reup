import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reup/features/common/styles.dart';
import 'package:reup/features/order/widgets/product_order.dart';
import 'package:reup/features/order/widgets/order_info.dart';

// экран "подробности заказа"
// ниже должны быть заполнены поля orderData - информация о закае и data - информация о товарах

class OrderDetails extends StatelessWidget {
  var orderData = OrderInfoData('9.01.2022', 'СБП Сбербанк',
      'СДЭК, 40 лет Победы ул, 7 м. Автозаводская');
  List<ProductCartData> data = [
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
  OrderDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 42,
              child: Stack(
                children: [
                  const Center(
                    child: Text('подробности заказа',
                        style: CustomTextStyle.reupCartName, maxLines: 1),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                        onPressed: (() {
                          Navigator.of(context).pop();
                        }),
                        icon: SvgPicture.asset(
                            'assets/icons/reup_icon_back_arrow.svg')),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              children:
                  //[
                  List.generate(data.length, (index) {
                return Prod(
                  data: data[index],
                  onTap: () {
                    log(index.toString());
                  },
                );
              }),
            ),
            OrderInfo(data: orderData)
          ]),
        ),
      ),
    );
  }
}
