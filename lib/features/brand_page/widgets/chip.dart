import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:reup/features/common/styles.dart';

class ReupChip extends StatefulWidget {
  final String text;

  const ReupChip({super.key, required this.text});

  @override
  State<ReupChip> createState() => _ReupChipState();
}

class _ReupChipState extends State<ReupChip> {
  bool _isCheked = false;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const SizedBox(width: 8),
      GestureDetector(
        onTap: (() {
          setState(() {
            _isCheked = !_isCheked;
          });
        }),
        child: Container(
          padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
          decoration: BoxDecoration(
              color: _isCheked
                  ? const Color.fromARGB(255, 121, 145, 245)
                  : Colors.transparent,
              border: Border.all(color: Colors.black)),
          child: Container(
            //color: Colors.red,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  widget.text,
                  textAlign: TextAlign.center,
                  style: _isCheked
                      ? CustomButtonTextStyle.chipWhite
                      : CustomButtonTextStyle.chipBlack,
                ),
                if (_isCheked) const SizedBox(width: 12),
                if (_isCheked)
                  SvgPicture.asset(
                    'assets/icons/reup_icon_cross.svg',
                    width: 16,
                    height: 16,
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
