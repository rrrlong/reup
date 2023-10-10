import 'package:flutter/material.dart';
import 'package:reup/assets/res/resources.dart';
import 'package:reup/features/common/styles.dart';
import 'package:reup/features/common/widgets/image_widget.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Row(
            children: [
              Text('REUP', style: CustomTextStyle.headerTextStyle),
              const Spacer(),
              IconButton(
                style: IconButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                onPressed: null,
                icon: const ImageWidget(Images.reupIconInst),
                // old
                // icon: Image.asset('assets/icons/reup_icon_inst.jpg'),
              ),
              const SizedBox(
                width: 8,
              ),
              IconButton(
                style: IconButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                onPressed: null,
                icon: const ImageWidget(Images.reupIconTg),
                // old
                // icon: Image.asset('assets/icons/reup_icon_tg.jpg'),
              )
            ],
          ),
        ),

        // текстовые кнопки для помощи
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              textDirection: TextDirection.ltr,
              children: [
                TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: null,
                    child: const Text(
                      'Написать в поддержку',
                      style: CustomButtonTextStyle.basicStyle,
                    )),
                TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: null,
                    child: const Text('FAQ',
                        style: CustomButtonTextStyle.basicStyle)),
                TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: null,
                    child: const Text('Публичная оферта',
                        style: CustomButtonTextStyle.basicStyle)),
              ],
            ),
          ),
        ),

        //кнопка "стать продавцом"
        const SizedBox(height: 16),
        Row(children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: OutlinedButton(
                  onPressed: null,
                  style: OutlinedButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: const BorderSide(color: Colors.black, width: 1),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      )),
                  child: const Text('Стать продавцом',
                      style: CustomButtonTextStyle.buttonBoldStyle)),
            ),
          ),
        ])
      ],
    );
  }
}
