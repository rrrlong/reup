import 'package:flutter/material.dart';
import 'package:reup/features/common/outlined_button.dart';
import 'package:reup/features/common/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reup/features/Profile/widgets/text_field.dart';

import 'package:reup/features/login/code_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                IconButton(
                    onPressed: (() {
                      Navigator.of(context).pop(); // куда?
                    }),
                    style: IconButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                    icon: SvgPicture.asset('assets/icons/reup_icon_cross.svg'))
              ],
            ),
            const SizedBox(height: 32),
            Text(
              'вход в личный кабинет',
              style: CustomTextStyle.headerTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'введите номер телефона',
                    style: CustomButtonTextStyle.buttonBoldStyle,
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 8),
                  TextFieldUserData(
                      controller: controller,
                      hintText: 'номер телефона*',
                      state: false),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ReupOutlinedButton(
                ontap: (() {
                  if (controller.text.isNotEmpty) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const CodeScreen(
                              firstTimeAuth: false,
                            )));
                  }
                }),
                text: 'отправить код'),
            const Spacer(),
            const Text(
              'еще не зарегестрированы?',
              style: CustomButtonTextStyle.basicStyle,
            ),
            TextButton(
                onPressed: (() {
                  Navigator.of(context).pop();
                }),
                style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                child: const Text(
                  'зарегестрироваться',
                  style: CustomButtonTextStyle.buttonItemStyle,
                ))
          ],
        ),
      ),
    );
  }
}
