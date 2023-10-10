import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:reup/features/common/styles.dart';
import 'package:reup/features/categories/widgets/sort_screen.dart';

class ButtonsCategories extends StatelessWidget {
  const ButtonsCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var btnstyle = OutlinedButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        side: const BorderSide(color: Colors.black, width: 1),
        alignment: Alignment.center,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
            side: BorderSide(color: Colors.black, width: 1)));

    return Row(
      children: [
        Expanded(
            flex: 1,
            child: OutlinedButton(
                onPressed: (() {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SortScreen()));
                }),
                style: btnstyle,
                child: const Text('сортировать',
                    maxLines: 1,
                    style: CustomButtonTextStyle.buttonItemStyle))),
        Expanded(
            flex: 1,
            child: OutlinedButton(
                onPressed: (() {
                  log('more');
                }),
                style: btnstyle,
                child: const Text('фильтры',
                    maxLines: 1, style: CustomButtonTextStyle.buttonItemStyle)))
      ],
    );
  }
}
