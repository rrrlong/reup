import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:reup/features/common/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartBar extends StatelessWidget {
  const CartBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const SizedBox(
          height: 32,
          width: 32,
        ),
        const Text(
          'корзина',
          style: CustomTextStyle.reupCartName,
          maxLines: 1,
        ),
        IconButton(
          onPressed: (() {
            log('close');
          }),
          icon: SvgPicture.asset('assets/icons/reup_icon_cross.svg'),
          iconSize: 16,
        )
      ]),
    );
  }
}
