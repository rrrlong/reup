import 'package:flutter/material.dart';
import 'package:reup/features/common/styles.dart';

class ReupOutlinedButton extends StatelessWidget {
  final VoidCallback ontap;
  final String text;
  const ReupOutlinedButton(
      {super.key, required this.ontap, required this.text});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: ontap,
      style: OutlinedButton.styleFrom(
          minimumSize: Size(MediaQuery.of(context).size.width, 42),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          side: const BorderSide(color: Colors.black, width: 1),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          )),
      child: Text(
        text,
        style: CustomButtonTextStyle.buttonBoldStyle,
      ),
    );
  }
}
