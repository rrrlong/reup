import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:reup/features/navigation/domain/entity/app_route_names.dart';
import 'package:reup/features/splash/bloc/splash_bloc.dart';

late Timer timer;
int currentScreen = 0;

@RoutePage(
  name: AppRouteNames.splashScreen,
)
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _splashBloc = SplashBloc();

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(milliseconds: 100), (Timer timer) {
      if (currentScreen < 7) {
        currentScreen++;
        setState(() {});
      } else {
        currentScreen = 0;
        setState(() {});
      }

      // controller.animateToPage(currentPage,
      //     duration: const Duration(milliseconds: 350), curve: Curves.easeIn);
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  List<Image> screens = [
    Image.asset(
      'assets/images/load_screen1.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/load_screen2.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/load_screen3.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/load_screen4.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/load_screen5.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/load_screen6.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/load_screen7.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/load_screen8.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/load_screen9.jpg',
      fit: BoxFit.fill,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        timer.cancel();
        currentScreen = 8;
        setState(() {});
        // timer =
      }),
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: screens[currentScreen]),
    );
  }
}
