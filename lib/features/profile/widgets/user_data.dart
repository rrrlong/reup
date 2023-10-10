import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reup/features/common/styles.dart';
import 'package:reup/features/Profile/widgets/text_field.dart';

//TODO собрать требовния на стейт страницы
//цвет textfield - ов должен меняться в зависимости от значения _buttonEdit

bool btn = false;

class UserData extends StatefulWidget {
  const UserData({super.key});

  @override
  State<UserData> createState() => _UserDataState();
}

List<TextEditingController> controller = [];

class _UserDataState extends State<UserData> {
  bool _isChekedM = false; // чекбоксы пола
  bool _isChekedW = false; //
  bool _buttonEdit = true; // состояние кнопки - сохранить/редактировать

  // по одному контроллеру на каждый textfield
  List<TextEditingController> controller = List.generate(7, (index) {
    return TextEditingController();
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 42,
              child: Stack(
                children: [
                  const Center(
                    child: Text('профиль',
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
            const SizedBox(
              height: 8,
            ),
            const Text(
              'личные данные',
              style: CustomButtonTextStyle.buttonBoldStyle,
            ),
            const SizedBox(
              height: 8,
            ),
            TextFieldUserData(
              controller: controller[0],
              hintText: 'фамилия*',
              state: _buttonEdit,
            ),
            const SizedBox(
              height: 8,
            ),
            TextFieldUserData(
              controller: controller[1],
              hintText: 'имя*',
              state: _buttonEdit,
            ),
            const SizedBox(
              height: 8,
            ),
            TextFieldUserData(
              controller: controller[2],
              hintText: 'отчество*',
              state: _buttonEdit,
            ),
            const SizedBox(
              height: 8,
            ),
            TextFieldUserData(
              controller: controller[3],
              hintText: 'дд.мм.гггг*',
              state: _buttonEdit,
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'контактные данные',
              style: CustomButtonTextStyle.buttonBoldStyle,
            ),
            const SizedBox(
              height: 8,
            ),
            TextFieldUserData(
              controller: controller[4],
              hintText: 'электронная почта',
              state: _buttonEdit,
            ),
            const SizedBox(
              height: 8,
            ),
            TextFieldUserData(
              controller: controller[5],
              hintText: 'номер телефона',
              state: _buttonEdit,
            ),
            const SizedBox(
              height: 8,
            ),
            TextFieldUserData(
              controller: controller[6],
              hintText: 'город',
              state: _buttonEdit,
            ),
            const SizedBox(
              height: 8,
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'пол',
              style: CustomButtonTextStyle.buttonBoldStyle,
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Transform.scale(
                  scale: 1.5,
                  child: Checkbox(
                      side: const BorderSide(
                        color: Color.fromARGB(255, 130, 130, 130),
                        width: 0.75,
                      ),
                      splashRadius: 0,
                      value: _isChekedW,
                      onChanged: _buttonEdit == true
                          ? null
                          : (value) {
                              setState(() {
                                _isChekedW = value!;
                                _isChekedM = !_isChekedW;
                              });
                            }),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  'женский',
                  style: CustomButtonTextStyle.basicStyle,
                ),
                const SizedBox(
                  width: 16,
                ),
                Transform.scale(
                  scale: 1.5,
                  child: Checkbox(
                      side: const BorderSide(
                        color: Color.fromARGB(255, 130, 130, 130),
                        width: 0.75,
                      ),
                      splashRadius: 0,
                      value: _isChekedM,
                      onChanged: _buttonEdit == true
                          ? null
                          : (value) {
                              setState(() {
                                _isChekedM = value!;
                                _isChekedW = !_isChekedM;
                              });
                            }),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  'мужской',
                  style: CustomButtonTextStyle.basicStyle,
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            OutlinedButton(
                onPressed: (() {
                  log(controller[0].text);
                  log(controller[1].text);
                  log(controller[2].text);
                  log(controller[3].text);
                  log(controller[4].text);
                  log(controller[5].text);
                  log(controller[6].text);
                  _isChekedM == true ? log('мужик') : log('вумен');
                  setState(() {
                    _buttonEdit = !_buttonEdit;
                  });
                }),
                style: OutlinedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width, 42),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    side: const BorderSide(color: Colors.black, width: 1),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    )),
                child: _buttonEdit
                    ? const Text(
                        'редактировать',
                        style: CustomButtonTextStyle.buttonBoldStyle,
                      )
                    : const Text('сохранить',
                        style: CustomButtonTextStyle.buttonBoldStyle))
          ],
        ),
      ),
    );
  }
}
