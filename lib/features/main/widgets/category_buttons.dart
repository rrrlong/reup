import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:reup/features/common/styles.dart';

class CategoryButtons extends StatelessWidget {
  const CategoryButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                flex: 1,
                child: OutlinedButton(
                    onPressed: (() {
                      log('more');
                    }),
                    style: OutlinedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.only(right: 16),
                        side: const BorderSide(color: Colors.black, width: 1),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.black, width: 1))),
                    child: const Text('верхняя одежда',
                        maxLines: 1,
                        style: CustomButtonTextStyle.buttonItemStyle))),
            Expanded(
                flex: 1,
                child: OutlinedButton(
                    onPressed: (() {
                      log('more');
                    }),
                    style: OutlinedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side: const BorderSide(color: Colors.black, width: 1),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.black, width: 1))),
                    child: const Text('обувь',
                        maxLines: 1,
                        style: CustomButtonTextStyle.buttonItemStyle)))
          ],
        ),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: OutlinedButton(
                    onPressed: (() {
                      log('more');
                    }),
                    style: OutlinedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side: const BorderSide(color: Colors.black, width: 1),
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 89),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.black, width: 1))),
                    child: const Text('сумки',
                        maxLines: 1,
                        style: CustomButtonTextStyle.buttonItemStyle))),
            Expanded(
                flex: 1,
                child: OutlinedButton(
                    onPressed: (() {
                      log('more');
                    }),
                    style: OutlinedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side: const BorderSide(color: Colors.black, width: 1),
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.only(right: 32),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.black, width: 1))),
                    child: const Text('рубашки',
                        maxLines: 1,
                        style: CustomButtonTextStyle.buttonItemStyle)))
          ],
        ),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: OutlinedButton(
                    onPressed: (() {
                      log('more');
                    }),
                    style: OutlinedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side: const BorderSide(color: Colors.black, width: 1),
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 40),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.black, width: 1))),
                    child: const Text('платья',
                        maxLines: 1,
                        style: CustomButtonTextStyle.buttonItemStyle))),
            Expanded(
                flex: 1,
                child: OutlinedButton(
                    onPressed: (() {
                      log('more');
                    }),
                    style: OutlinedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side: const BorderSide(color: Colors.black, width: 1),
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 20),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.black, width: 1))),
                    child: const Text('костюмы',
                        maxLines: 1,
                        style: CustomButtonTextStyle.buttonItemStyle)))
          ],
        ),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: OutlinedButton(
                    onPressed: (() {
                      log('more');
                    }),
                    style: OutlinedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        side: const BorderSide(color: Colors.black, width: 1),
                        alignment: Alignment.center,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.black, width: 1))),
                    child: const Text('штаны',
                        maxLines: 1,
                        style: CustomButtonTextStyle.buttonItemStyle))),
            Expanded(
                flex: 1,
                child: OutlinedButton(
                    onPressed: (() {
                      log('more');
                    }),
                    style: OutlinedButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.only(right: 16),
                        side: const BorderSide(color: Colors.black, width: 1),
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.black, width: 1))),
                    child: const Text('аксессуары',
                        maxLines: 1,
                        style: CustomButtonTextStyle.buttonItemStyle)))
          ],
        ),
      ],
    );
  }
}
