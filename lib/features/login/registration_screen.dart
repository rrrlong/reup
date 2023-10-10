import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:reup/features/common/outlined_button.dart';
import 'package:reup/features/common/styles.dart';
import 'package:reup/features/Profile/widgets/text_field.dart';
import 'package:getwidget/getwidget.dart';
import 'package:reup/features/login/code_screen.dart';
import 'package:reup/features/login/login_screen.dart';

// TODO узнать куда будут вести крестики и финальные кнопки в AuthenticationCompleted

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool _isCheked = false;

  List<TextEditingController> controller = List.generate(3, (index) {
    return TextEditingController();
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: (Center(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'регистрация',
                style: CustomTextStyle.headerTextStyle,
              ),
              const SizedBox(height: 32),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('фамилия',
                    style: CustomButtonTextStyle.buttonBoldStyle),
              ),
              const SizedBox(height: 8),
              TextFieldUserData(
                  controller: controller[0],
                  hintText: 'фамилия*',
                  state: false),
              const SizedBox(
                height: 16,
              ),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('имя',
                      style: CustomButtonTextStyle.buttonBoldStyle)),
              const SizedBox(height: 8),
              TextFieldUserData(
                  controller: controller[1], hintText: 'имя*', state: false),
              const SizedBox(
                height: 16,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('номер телефона',
                    style: CustomButtonTextStyle.buttonBoldStyle),
              ),
              const SizedBox(height: 8),
              TextFieldUserData(
                  controller: controller[2],
                  hintText: 'номер телефона*',
                  state: false),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GFCheckbox(
                      size: 32,
                      type: GFCheckboxType.square,
                      inactiveBorderColor:
                          const Color.fromARGB(255, 130, 130, 130),
                      activeBorderColor: Colors.black,
                      inactiveBgColor: Colors.transparent,
                      activeBgColor: const Color.fromARGB(255, 121, 145, 245),
                      onChanged: (value) {
                        setState(() {
                          _isCheked = !_isCheked;
                        });
                      },
                      value: _isCheked),
                  Expanded(
                      child: RichText(
                    text: const TextSpan(
                        text: 'я ознакомился и согласен с ',
                        style: CustomButtonTextStyle.basicStyle,
                        children: <TextSpan>[
                          TextSpan(
                            text: 'политикой обработки персональных данных ',
                            style: CustomTextStyle.reupUnderlined,
                            recognizer: null,
                          ),
                          TextSpan(
                              text: 'и пользовательским соглашением',
                              style: CustomButtonTextStyle.basicStyle)
                        ]),
                  )),
                ],
              ),
              const SizedBox(height: 48),
              ReupOutlinedButton(
                  ontap: (() {
                    log(controller[0].text);
                    log(controller[1].text);
                    log(controller[2].text);
                    if (_isCheked) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CodeScreen(
                                firstTimeAuth: true,
                              )));
                    }
                  }),
                  text: 'продолжить'),
              const Spacer(),
              const Text(
                'уже зарегестрированы?',
                style: CustomButtonTextStyle.basicStyle,
              ),
              TextButton(
                  onPressed: (() {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  }),
                  style: TextButton.styleFrom(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                  child: const Text(
                    'войти',
                    style: CustomButtonTextStyle.buttonItemStyle,
                  ))
            ],
          ),
        )),
      ),
    );
  }
}
