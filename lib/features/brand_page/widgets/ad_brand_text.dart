import 'package:flutter/material.dart';

import 'package:reup/features/common/styles.dart';

class AdBrandText extends StatelessWidget {
  final String header;
  final String text;
  final Color color;
  final VoidCallback ontap;
  const AdBrandText(
      {super.key,
      required this.header,
      required this.text,
      required this.color,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 100,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),

      decoration: BoxDecoration(
          color: color,
          border: const Border(
              top: BorderSide(color: Colors.black),
              bottom: BorderSide(color: Colors.black))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            style: CustomTextStyle.headerTextStyle,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            text,
            style: CustomButtonTextStyle.buttonBoldStyle,
          )
        ],
      ),
    );
  }
}
