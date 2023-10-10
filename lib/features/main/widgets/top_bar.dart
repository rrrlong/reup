import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reup/assets/res/resources.dart';
import 'package:reup/features/common/styles.dart';
import 'package:reup/features/common/widgets/image_widget.dart';
import 'package:reup/features/search/search.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 48,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('REUP', style: CustomTextStyle.headerTextStyle),
            IconButton(
                icon: ImageWidget(
                  SvgIcons.searchIcon,
                  width: 16,
                  height: 16,
                ),
                // old, TODO: remove
                // icon: SvgPicture.asset(
                //   'assets/icons/reup_search.svg',
                //   width: 16,
                //   height: 16,
                // ),
                iconSize: 32,
                onPressed: (() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Search()));
                  log('message');
                }))
          ],
        ));
  }
}
