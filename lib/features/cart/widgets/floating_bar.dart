import 'package:flutter/material.dart';
import 'package:reup/features/common/styles.dart';

class FloatingBar extends StatelessWidget {
  const FloatingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 1,
                ))),
        child: Row(
          children: [
            const Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'товары 10 шт',
                    style: CustomTextStyle.reupCartSummary,
                  ),
                  Text(
                    '10 000',
                    style: CustomButtonTextStyle.buttonItemStyle,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: OutlinedButton(
                  onPressed: null,
                  style: OutlinedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 42),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: const BorderSide(color: Colors.black, width: 1),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      )),
                  child: const Text('оформить заказ',
                      style: CustomButtonTextStyle.buttonBoldStyle)),
            )
          ],
        ),
      ),
    );
  }
}
