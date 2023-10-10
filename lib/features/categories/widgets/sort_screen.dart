import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reup/features/common/styles.dart';
import 'package:getwidget/getwidget.dart';

class SortScreen extends StatefulWidget {
  const SortScreen({super.key});

  @override
  State<SortScreen> createState() => _SortScreenState();
}

class _SortScreenState extends State<SortScreen> {
  bool isCheckedCheaper = true;
  bool isChekedExpensive = false;
  bool isChekedSale = false;
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
                    child: Text('сортировка',
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
            Row(
              children: [
                GFCheckbox(
                    activeIcon: SvgPicture.asset(
                        'assets/icons/reup_radio_button_active.svg'),
                    inactiveIcon: SvgPicture.asset(
                        'assets/icons/reup_radio_button_disabled.svg'),
                    activeBgColor: Colors.white,
                    size: 32,
                    inactiveBorderColor: Colors.transparent,
                    type: GFCheckboxType.circle,
                    onChanged: (value) {
                      setState(() {
                        isCheckedCheaper = value;
                        isChekedExpensive = !value;
                        isChekedSale = !value;
                      });
                    },
                    value: isCheckedCheaper),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  'сначла дешевле',
                  style: CustomButtonTextStyle.basicStyle,
                )
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                GFCheckbox(
                    activeIcon: SvgPicture.asset(
                        'assets/icons/reup_radio_button_active.svg'),
                    inactiveIcon: SvgPicture.asset(
                        'assets/icons/reup_radio_button_disabled.svg'),
                    activeBgColor: Colors.white,
                    size: 32,
                    inactiveBorderColor: Colors.transparent,
                    type: GFCheckboxType.circle,
                    onChanged: (value) {
                      setState(() {
                        isChekedExpensive = value;
                        isCheckedCheaper = !value;
                        isChekedSale = !value;
                      });
                    },
                    value: isChekedExpensive),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  'сначла дороже',
                  style: CustomButtonTextStyle.basicStyle,
                )
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                GFCheckbox(
                    activeIcon: SvgPicture.asset(
                        'assets/icons/reup_radio_button_active.svg'),
                    inactiveIcon: SvgPicture.asset(
                        'assets/icons/reup_radio_button_disabled.svg'),
                    activeBgColor: Colors.white,
                    size: 32,
                    inactiveBorderColor: Colors.transparent,
                    type: GFCheckboxType.circle,
                    onChanged: (value) {
                      setState(() {
                        isChekedSale = value;
                        isCheckedCheaper = !value;
                        isChekedExpensive = !value;
                      });
                    },
                    value: isChekedSale),
                const SizedBox(
                  width: 12,
                ),
                const Text(
                  'по величине скидки',
                  style: CustomButtonTextStyle.basicStyle,
                )
              ],
            ),
            //Checkbox(value: true, onChanged: null,)
            //тут чекбоксы
          ],
        ),
      ),
    );
  }
}
