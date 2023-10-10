import 'package:flutter/material.dart';
import 'package:reup/features/common/outlined_button.dart';
import 'package:reup/features/common/styles.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:developer';

class AuthenticationCompleted extends StatelessWidget {
  final bool firstTimeAuth;
  const AuthenticationCompleted({super.key, required this.firstTimeAuth});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            Row(
              children: [
                const Spacer(),
                IconButton(
                    onPressed: (() {
                      // куда?
                    }),
                    icon: SvgPicture.asset('assets/icons/reup_icon_cross.svg'))
              ],
            ),
            Text(
              firstTimeAuth
                  ? 'регистрация успешно завершена!'
                  : 'вы успешно вошли!',
              style: CustomTextStyle.headerTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            firstTimeAuth
                ? RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        text: 'добавьте информацию о себе в ',
                        style: CustomButtonTextStyle.basicStyle,
                        children: <TextSpan>[
                          TextSpan(
                            text: 'личном кабинете',
                            style: CustomButtonTextStyle.buttonItemStyle,
                            // recognizer: TapGestureRecognizer()
                            //   ..onTap = (() {
                            //     Navigator.of(context).push(MaterialPageRoute(
                            //         builder: (context) => Profile()));
                            //   }),
                          ),
                        ]),
                  )
                : ReupOutlinedButton(
                    ontap: (() {
                      log('buy');
                    }),
                    text: 'к покупкам',
                  )
          ],
        ),
      ),
    );
  }
}
