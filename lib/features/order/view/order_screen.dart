import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:reup/features/common/carousel.dart';
import 'package:reup/features/common/styles.dart';
import 'package:reup/features/common/widgets/image_widget.dart';
import 'package:reup/features/main/widgets/widgets.dart';
import 'package:reup/features/navigation/domain/entity/app_route_names.dart';

// @RoutePage(
//   name: AppRouteNames.orderScreen,
// )
class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 42,
              child: Stack(
                children: [
                  const Center(
                    child: Text('мои заказы',
                        style: CustomTextStyle.reupCartName, maxLines: 1),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                        onPressed: (() {
                          Navigator.of(context).pop();
                        }),
                        icon: SvgPicture.asset(
                            'assets/icons/reup_icon_back_arrow.svg')),
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'здесь пока нет заказов\nможет, вы еще не нашли то, что искали?',
              style: CustomButtonTextStyle.buttonItemStyle,
            ),
            const SizedBox(height: 32),
            OutlinedButton(
                onPressed: (() {}),
                style: OutlinedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width, 42),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    side: const BorderSide(color: Colors.black, width: 1),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    )),
                child: const Text('отправиться на поиски',
                    style: CustomButtonTextStyle.buttonBoldStyle)),
          ],
        ),
      ),
    );
  }
}
