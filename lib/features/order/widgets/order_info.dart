import 'package:flutter/material.dart';
import 'package:reup/features/common/styles.dart';

//отображает информацию о заказе - дата, тип оплаты и адрес доставки

class OrderInfoData {
  String date;
  String payment;
  String adress;
  OrderInfoData(this.date, this.payment, this.adress);
}

class OrderInfo extends StatelessWidget {
  final OrderInfoData data;
  const OrderInfo({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'дата заказа',
          style: CustomTextStyle.reupOrderLabel,
        ),
        const SizedBox(height: 12),
        Text(
          data.date,
          style: CustomTextStyle.promoTextStyle,
        ),
        const SizedBox(height: 8),
        const Text(
          'способ оплаты',
          style: CustomTextStyle.reupOrderLabel,
        ),
        const SizedBox(height: 12),
        Text(
          data.payment,
          style: CustomTextStyle.promoTextStyle,
        ),
        const SizedBox(height: 8),
        const Text(
          'адрес пункта выдачи',
          style: CustomTextStyle.reupOrderLabel,
        ),
        const SizedBox(height: 12),
        Text(
          data.adress,
          style: CustomTextStyle.promoTextStyle,
        ),
      ],
    );
  }
}
