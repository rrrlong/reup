import 'package:flutter/material.dart';
import 'package:reup/features/cart/widgets/product_cart.dart';
import 'package:reup/features/common/styles.dart';

class SummaryData {
  final int finalSum;
  final int discount;
  SummaryData(this.finalSum, this.discount);
}

class Summary extends StatelessWidget {
  final List<ProductCartData> data;
  //final SummaryData data;
  Summary({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    int sum = 0;
    int sale = 0;
    for (var i = 0; i < data.length; i++) {
      sum += data[i].price;
      sale += data[i].lastPrice;
    }
    sale -= sum;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'итого:',
              style: CustomButtonTextStyle.buttonItemStyle,
            ),
            Text(
              '$sum₽',
              style: CustomButtonTextStyle.buttonItemStyle,
            )
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'товары 10 шт:',
              style: CustomTextStyle.reupCartSummary,
            ),
            Text(
              '12 000₽',
              style: CustomTextStyle.reupCartSummary,
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'скидка:',
              style: CustomTextStyle.reupCartSummary,
            ),
            Text(
              '$sale₽',
              style: CustomTextStyle.reupCartSummary,
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'доставка:',
              style: CustomTextStyle.reupCartSummary,
            ),
            Text(
              'бесплатно',
              style: CustomTextStyle.reupCartSummary,
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        TextFormField(
          decoration: const InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(255, 243, 243, 243),
            hintText: 'введите промокод',
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        OutlinedButton(
            onPressed: null,
            style: OutlinedButton.styleFrom(
                minimumSize: const Size(double.infinity, 42),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                side: const BorderSide(color: Colors.black, width: 1),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                )),
            child: const Text('оформить заказ',
                style: CustomButtonTextStyle.buttonBoldStyle))
      ],
    );
  }
}
