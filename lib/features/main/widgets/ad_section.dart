import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:reup/assets/res/resources.dart';
import 'package:reup/features/common/widgets/image_widget.dart';

class AdSection extends StatelessWidget {
  const AdSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (() {
            log('ad1');
          }),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(
                  height: 150,
                  child: ImageWidget(
                    Images.mainAd1,
                    fit: BoxFit.fill,
                  ),
                  // old
                  // child: Image.asset(
                  //   'assets/images/reup_ad1.jpg',
                  //   fit: BoxFit.fill,
                  // ),
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  height: 150,
                  child: ImageWidget(
                    Images.mainAd2,
                    fit: BoxFit.fill,
                  ),
                  // old
                  // child: SvgPicture.asset(
                  //   'assets/images/reup_ad1.1.svg',
                  //   fit: BoxFit.fill,
                  // ),
                ),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: (() {
            log('ad2');
          }),
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(
                  height: 100,
                  child: ImageWidget(
                    Images.mainAd3,
                    fit: BoxFit.fill,
                  ),
                  // old
                  // child: SvgPicture.asset(
                  //   'assets/images/reup_ad2.svg',
                  //   fit: BoxFit.fill,
                  // ),
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  height: 100,
                  child: ImageWidget(
                    Images.mainAd4,
                    fit: BoxFit.fill,
                  ),
                  // old
                  // child: Image.asset(
                  //   'assets/images/reup_ad2.1.jpg',
                  //   fit: BoxFit.fill,
                  // ),
                ),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: (() {
            log('ad3');
          }),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Column(
              children: [
                ImageWidget(
                  Images.mainAd5,
                  fit: BoxFit.fill,
                ),
                // old
                // Image.asset(
                //   'assets/images/reup_ad3.jpg',
                //   fit: BoxFit.fill,
                // ),

                ImageWidget(
                  Images.mainAd6,
                  fit: BoxFit.fill,
                ),
                // old
                // SvgPicture.asset(
                //   'assets/images/reup_ad3.1.svg',
                //   fit: BoxFit.fill,
                // ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
