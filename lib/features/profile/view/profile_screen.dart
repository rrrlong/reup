import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reup/features/common/styles.dart';
import 'package:reup/features/login/registration_screen.dart';
import 'package:reup/features/navigation/domain/entity/app_route_names.dart';
import 'package:reup/features/order/widgets/order_details.dart';
import 'package:reup/features/profile/widgets/widgets.dart';

@RoutePage(
  name: AppRouteNames.profileScreen,
)
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: const SizedBox(
            height: 42,
            child: Center(
              child: Text(
                'профиль',
                style: CustomTextStyle.reupCartName,
                maxLines: 1,
              ),
            ),
          ),
        ),

        //мои данные
        GestureDetector(
          onTap: (() {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => UserData()));
          }),
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width - 32,
            decoration: const BoxDecoration(
                border: Border(
                    bottom:
                        BorderSide(color: Color.fromARGB(255, 224, 224, 224)))),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'мои данные',
                style: CustomTextStyle.reupProfileText,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (() {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => OrderDetails()));
            // .push(MaterialPageRoute(builder: (context) => EmptyOrder()));
          }),
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width - 32,
            decoration: const BoxDecoration(
                border: Border(
                    bottom:
                        BorderSide(color: Color.fromARGB(255, 224, 224, 224)))),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'мои заказы',
                style: CustomTextStyle.reupProfileText,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: null,
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width - 32,
            decoration: const BoxDecoration(
                border: Border(
                    bottom:
                        BorderSide(color: Color.fromARGB(255, 224, 224, 224)))),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'избранное',
                style: CustomTextStyle.reupProfileText,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: null,
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width - 32,
            decoration: const BoxDecoration(
                border: Border(
                    bottom:
                        BorderSide(color: Color.fromARGB(255, 224, 224, 224)))),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'стать продавцом',
                style: CustomTextStyle.reupProfileText,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (() {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Registration()));
          }),
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width - 32,
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'выход',
                style: TextStyle(
                  color: Color.fromARGB(255, 227, 6, 19),
                  fontSize: 16,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.12,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
