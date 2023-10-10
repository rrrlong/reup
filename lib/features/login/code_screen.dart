import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:reup/features/common/styles.dart';
import 'package:pinput/pinput.dart';
import 'package:reup/features/login/authentication_completed.dart';
import 'package:flutter_svg/flutter_svg.dart';

// TODO при подключении firebase дописать pinput
// https://pub.dev/packages/pinput

class CodeScreen extends StatelessWidget {
  final bool firstTimeAuth;
  const CodeScreen({super.key, required this.firstTimeAuth});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: CustomTextStyle.reupPinCode,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(0),
      ),
    );
    return Material(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(children: [
            Row(
              children: [
                IconButton(
                    onPressed: (() {
                      Navigator.of(context).pop();
                    }),
                    style: IconButton.styleFrom(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                    icon: SvgPicture.asset(
                        'assets/icons/reup_icon_back_arrow.svg')),
                const Spacer(),
              ],
            ),
            Text(
              firstTimeAuth ? 'регистрация' : 'вход в личный кабинет',
              style: CustomTextStyle.headerTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            const Text(
              'введите код, который мы отправили вам по SMS',
              style: CustomButtonTextStyle.basicStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            Pinput(
              defaultPinTheme: defaultPinTheme,
              cursor: const Text(
                '_',
                style: CustomTextStyle.reupPinCode,
              ),
              onCompleted: ((pin) {
                log(pin);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AuthenticationCompleted(
                          firstTimeAuth: firstTimeAuth,
                        )));
              }),
            ),
            const SizedBox(height: 32),
            TextButton(
                onPressed: (() {
                  log('отправить повторно');
                }),
                child: const Text(
                  'отправить повторно',
                  style: CustomButtonTextStyle.buttonItemStyle,
                ))
          ]),
        ),
      ),
    );
  }
}
