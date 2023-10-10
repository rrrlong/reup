import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:reup/features/common/styles.dart';
import 'package:reup/features/cart/widgets/product_cart.dart';
import 'package:reup/features/cart/widgets/summary.dart';
import 'package:visibility_detector/visibility_detector.dart';

// TODO отобразить нижнюю панель
// TODO реализовать удаление товаров

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

class FilledCart extends StatefulWidget {
  final List<ProductCartData> items;

  const FilledCart({super.key, required this.items});

  @override
  State<FilledCart> createState() => _FilledCartState();
}

class _FilledCartState extends State<FilledCart> {
  bool _showFloatingBar = true;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    numberOfProucts = widget.items.length;
    productsNameState = _getProductsNameState(context);

    return Stack(alignment: Alignment.bottomCenter, children: [
      Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$numberOfProucts $productsNameState',
                  style: CustomTextStyle.headerTextStyle,
                  maxLines: 1,
                ),
                TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),

                    // TODO добавить callback
                    onPressed: null,
                    child: const Text(
                      'выбрать все',
                      style: CustomButtonTextStyle.basicStyle,
                    )),
              ],
            ),

            //тут генерируются товары полученные из cart

            Column(
              children:
                  //[
                  List.generate(widget.items.length, (index) {
                return ProductCart(
                  data: widget.items[index],
                  onTap: () {
                    log(index.toString());
                  },
                  // onDelete: () {
                  //   items.remove(items[index]);
                  // },
                );
              }),
            ),
            const SizedBox(
              height: 32,
            ),

            // проверяет виден ли виджет суммы
            VisibilityDetector(
                key: const Key('key'),
                onVisibilityChanged: (info) {
                  if (info.visibleFraction > 0 && _showFloatingBar) {
                    log('hide');
                    if (!mounted) return;
                    setState(() => _showFloatingBar = false);
                  } else if (info.visibleFraction <= 0 && !_showFloatingBar) {
                    log('show');
                    //showBottomBar = true;
                    if (!mounted) return;
                    setState(() => _showFloatingBar = true);
                  }
                },
                child: Summary(data: widget.items)),
          ],
        ),
      ),

      //if (_showFloatingBar) FloatingBar(),
    ]);
  }
}
