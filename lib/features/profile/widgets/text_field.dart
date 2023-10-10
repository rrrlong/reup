import 'package:flutter/material.dart';
import 'package:reup/features/common/styles.dart';

class TextFieldUserData extends StatelessWidget {
  final String hintText;
  final bool state;
  const TextFieldUserData(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.state});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 42,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
              enabled: state ? false : true,
              contentPadding: const EdgeInsets.all(12),
              fillColor: Colors.grey,
              hintText: hintText,
              hintStyle: CustomTextStyle.reupHintText,
              border: const OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 130, 130, 130)))),
        ));
  }
}
