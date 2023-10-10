import 'package:flutter/material.dart';
import 'package:reup/features/common/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

// карточка товара в подробностях заказа

class ProductCartData {
  final Image image;
  final String name;
  final String type;
  final String brand;
  final String color;
  final String size;
  final int price;
  final int lastPrice;
  ProductCartData(this.image, this.name, this.type, this.brand, this.color,
      this.size, this.price, this.lastPrice);
}

class Prod extends StatelessWidget {
  final ProductCartData data;
  final VoidCallback onTap;
  const Prod({super.key, required this.data, required this.onTap});

  @override
  Widget build(BuildContext context) {
    String price = data.price.toString();
    String lastPrice = data.lastPrice.toString();
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: data.image,
              ),
              const SizedBox(width: 16),
              Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data.name,
                        style: CustomTextStyle.reupCartName,
                        maxLines: 1,
                      ),
                      Text(
                        data.type,
                        style: CustomButtonTextStyle.buttonBoldStyle,
                        maxLines: 1,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        data.brand,
                        style: CustomTextStyle.promoTextStyle,
                        maxLines: 1,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        data.color,
                        style: CustomTextStyle.promoTextStyle,
                        maxLines: 1,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        data.size,
                        style: CustomTextStyle.promoTextStyle,
                        maxLines: 1,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Text(
                            '$lastPrice ₽',
                            style: CustomButtonTextStyle.buttonItemStyle,
                          ),
                          const SizedBox(width: 12),
                          Text(
                            '$price ₽',
                            style: CustomTextStyle.reupLastPrice,
                          ),
                        ],
                      )
                    ],
                  ))
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          // линия
          Container(
            width: double.infinity,
            decoration: const ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.50,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16)
        ],
      ),
    );
  }
}
