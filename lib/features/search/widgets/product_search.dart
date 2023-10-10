import 'package:flutter/material.dart';
import 'package:reup/features/common/styles.dart';

class ProductSearchData {
  final Image img;
  final String name;
  final String brand;
  ProductSearchData(this.img, this.name, this.brand);
}

class ProuctSearch extends StatelessWidget {
  final ProductSearchData data;
  const ProuctSearch({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        data.img,
        const SizedBox(
          height: 8,
        ),
        Text(
          data.name,
          style: CustomTextStyle.reupCartSummary,
          maxLines: 1,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          data.brand,
          style: CustomTextStyle.promoTextStyle,
          maxLines: 1,
        ),
      ],
    );
  }
}
