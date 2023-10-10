import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';

//late Timer _timer;

class UpcycleWidget extends StatefulWidget {
  const UpcycleWidget({super.key});

  @override
  State<UpcycleWidget> createState() => _UpcycleWidgetState();
}

class _UpcycleWidgetState extends State<UpcycleWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  ScrollController scrollControllerUpcycle = ScrollController();

  @override
  void initState() {
    super.initState();
    // _timer = Timer(const Duration(seconds: 4), () {
    //   WidgetsBinding.instance.addPostFrameCallback((_) {
    //     if (scrollControllerUpcycle.hasClients) {
    //       scrollControllerUpcycle.animateTo(999999,
    //           duration: Duration(hours: 5), curve: Curves.easeOut);
    //     }
    //   });
    // });

    // _controller = AnimationController(vsync: this);
    // _controller.animateTo(99,
    //     duration: const Duration(minutes: 5), curve: Curves.easeOut);
    //super.initState();
    // _controller = AnimationController(vsync: this);
    // if (scrollControllerUpcycle.hasClients) {
    //   scrollControllerUpcycle.animateTo(99999,
    //       duration: const Duration(hours: 2), curve: Curves.easeOut);
    // }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
    //_timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return SvgPicture.asset('assets/icons/upcycle.svg');
        },
        itemCount: 999,
        controller: scrollControllerUpcycle,
      ),
    );
  }
}
