import 'package:flutter/material.dart';
import 'package:reup/features/common/styles.dart';
import 'package:reup/features/common/product.dart';

int numberOfProucts = 0;
String productsNameState = '';

String _getProductsNameState(BuildContext context) {
  int numberState =
      numberOfProucts % 10; // остаток от деления на 10 количества товаров
  if (numberState == 1) {
    productsNameState = 'товар';
    return productsNameState;
  } else if (numberState > 1 && numberState < 5) {
    productsNameState = 'товара';
    return productsNameState;
  } else {
    productsNameState = 'товаров';
    return productsNameState;
  }
}

class FilledFavorites extends StatelessWidget {
  final List<ProductData> items;
  const FilledFavorites({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    numberOfProucts = items.length;
    productsNameState = _getProductsNameState(context);
    return Column(
      //mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            '$numberOfProucts $productsNameState',
            style: CustomTextStyle.headerTextStyle,
            maxLines: 1,
          ),
        ),
        //Product(data: items[0]),
        GridView.count(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(16),
            crossAxisCount: 2,
            primary: false,
            shrinkWrap: true,
            childAspectRatio: 0.6, // (183 / 292),
            crossAxisSpacing: 8,
            mainAxisSpacing: 16,
            // physics: BouncingScrollPhysics(),
            children: List.generate(
              items.length,
              (index) {
                return Product(data: items[index]);
              },
            )),
      ],
    );
  }
}
