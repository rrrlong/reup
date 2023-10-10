import 'package:flutter/material.dart';
import 'package:reup/features/common/styles.dart';

class Collection extends StatelessWidget {
  final CollectionData data;
  const Collection({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 179,
      height: 227,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 0.5),
        color: Colors.white,
      ),
      child: Column(children: [
        Container(
          width: 179,
          height: 173,
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.black, width: 0.5)),
          ),
          child: FittedBox(
            fit: BoxFit.fill,
            child: data.img,
          ),
        ),
        const SizedBox(height: 8),
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  data.collectionName,
                  style: CustomTextStyle.boldTextStyle,
                  maxLines: 1,
                ))),
        const SizedBox(
          height: 8,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              data.brand,
              style: CustomTextStyle.promoTextStyle,
              maxLines: 1,
            ),
          ),
        )
      ]),
    );
  }
}

class CollectionData {
  final String collectionName;
  final String brand;
  final Widget img;
  // old
  // final Image img;
  CollectionData(this.collectionName, this.brand, this.img);
}
