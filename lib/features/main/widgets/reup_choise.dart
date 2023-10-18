import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reup/assets/res/resources.dart';
import 'package:reup/features/common/styles.dart';
import 'package:reup/features/common/widgets/image_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// final controllerReupChoise = PageController(
//   initialPage: 0,
// );

Timer _timer = Timer.periodic(const Duration(seconds: 7), (Timer timer) {});

int _currentPage = 0;

int _numberOfPages = 6;

class ReupChoise extends StatefulWidget {
  final bool showMoreButton;
  final PageController controllerReupChoise;
  final Color color;
  const ReupChoise(
      {super.key,
      required this.controllerReupChoise,
      required this.color,
      required this.showMoreButton});

  @override
  State<ReupChoise> createState() => _ReupChoiseState();
}

class _ReupChoiseState extends State<ReupChoise> {
  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 7), (Timer timer) {
      if (_currentPage < _numberOfPages - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (widget.controllerReupChoise.hasClients) {
          widget.controllerReupChoise.animateToPage(_currentPage,
              duration: const Duration(milliseconds: 350),
              curve: Curves.easeIn);
        }
      });
    });
  }

  @override
  void dispose() {
    widget.controllerReupChoise.dispose();
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: widget.showMoreButton == true ? 500 : 440,
          child: PageView(
              controller: widget.controllerReupChoise,
              onPageChanged: (index) {
                _currentPage = index;
                _timer.cancel();
                _timer =
                    Timer.periodic(const Duration(seconds: 7), (Timer timer) {
                  if (_currentPage < _numberOfPages - 1) {
                    _currentPage++;
                  } else {
                    _currentPage = 0;
                  }
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    if (widget.controllerReupChoise.hasClients) {
                      widget.controllerReupChoise.animateToPage(_currentPage,
                          duration: const Duration(milliseconds: 350),
                          curve: Curves.easeIn);
                    }
                  });
                });
              },
              children: [
                ReupChoisePage(
                  data: ReupChoiseData(
                    'BEFREE',
                    'Наше дело не так однозначно, как может показаться: существующая теория напрямую зависит от стандартных подходов. Идейные соображения высшего порядка, а также разбавленное изрядной долей',
                    ImageWidget(Images.mainReupChoice),
                    // old
                    // Image.asset('assets/images/reup_img3.jpg'),
                  ),
                  color: widget.color,
                  showMoreButton: widget.showMoreButton,
                ),
                ReupChoisePage(
                  data: ReupChoiseData(
                    'BEFREE',
                    'Наше дело не так однозначно, как может показаться: существующая теория напрямую зависит от стандартных подходов. Идейные соображения высшего порядка, а также разбавленное изрядной долей',
                    ImageWidget(Images.mainReupChoice),
                    // old
                    // Image.asset('assets/images/reup_img3.jpg'),
                  ),
                  color: widget.color,
                  showMoreButton: widget.showMoreButton,
                ),
                ReupChoisePage(
                  data: ReupChoiseData(
                    'BEFREE',
                    'Наше дело не так однозначно, как может показаться: существующая теория напрямую зависит от стандартных подходов. Идейные соображения высшего порядка, а также разбавленное изрядной долей',
                    ImageWidget(Images.mainReupChoice),
                    // old
                    // Image.asset('assets/images/reup_img3.jpg'),
                  ),
                  color: widget.color,
                  showMoreButton: widget.showMoreButton,
                ),
                ReupChoisePage(
                  data: ReupChoiseData(
                    'BEFREE',
                    'Наше дело не так однозначно, как может показаться: существующая теория напрямую зависит от стандартных подходов. Идейные соображения высшего порядка, а также разбавленное изрядной долей',
                    ImageWidget(Images.mainReupChoice),
                    // old
                    // Image.asset('assets/images/reup_img3.jpg'),
                  ),
                  color: widget.color,
                  showMoreButton: widget.showMoreButton,
                ),
                ReupChoisePage(
                  data: ReupChoiseData(
                    'BEFREE',
                    'Наше дело не так однозначно, как может показаться: существующая теория напрямую зависит от стандартных подходов. Идейные соображения высшего порядка, а также разбавленное изрядной долей',
                    ImageWidget(Images.mainReupChoice),
                    // old
                    // Image.asset('assets/images/reup_img3.jpg'),
                  ),
                  color: widget.color,
                  showMoreButton: widget.showMoreButton,
                ),
                ReupChoisePage(
                  data: ReupChoiseData(
                    'BEFREE',
                    'Наше дело не так однозначно, как может показаться: существующая теория напрямую зависит от стандартных подходов. Идейные соображения высшего порядка, а также разбавленное изрядной долей',
                    ImageWidget(Images.mainReupChoice),
                    // old
                    // Image.asset('assets/images/reup_img3.jpg'),
                  ),
                  color: widget.color,
                  showMoreButton: widget.showMoreButton,
                ),
              ]),
        ),

        // Padding(
        //   padding: EdgeInsets.only(left: 16),
        //   child: Text(
        //     '$_currentPage из 6',
        //     style: CustomButtonTextStyle.buttonBoldStyle,
        //   ),
        // ),

        //индикатор страниц
        Container(
          width: MediaQuery.of(context).size.width,
          color: widget.color,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: SmoothPageIndicator(
              controller: widget.controllerReupChoise,
              count: 6,
              effect: ExpandingDotsEffect(
                  dotColor: Colors.white.withOpacity(0.5),
                  activeDotColor: Colors.black,
                  radius: 0,
                  dotHeight: 8,
                  spacing: 4,
                  dotWidth: 8,
                  //expansionFactor: 37,
                  expansionFactor: _getExpansionFactor(context)),
            ),
          ),
        ),
        Container(height: 16, color: widget.color)
      ],
    );
  }

  //TODO изменить цифры на переменные
  double _getExpansionFactor(BuildContext context) {
    int _numberOfInactivePages = _numberOfPages - 1;
    int _distanceBetween =
        4; // расстояние в пикселях между точками неактивных страниц
    int _pointSize =
        8; // размер неактиных точек (указывается еще в билдере smoothPage)

    return ((MediaQuery.of(context).size.width -
                32 -
                (_numberOfInactivePages * _distanceBetween +
                    _numberOfInactivePages * _pointSize)) ~/
            _pointSize)
        .toDouble();
  }
}

class ReupChoiseData {
  final String title;
  final String text;
  final Widget img;
  // old
  // final Image img;

  ReupChoiseData(this.title, this.text, this.img);
}

class ReupChoisePage extends StatefulWidget {
  final bool showMoreButton;
  final Color color;
  final ReupChoiseData data;
  const ReupChoisePage(
      {super.key,
      required this.data,
      required this.color,
      required this.showMoreButton});

  @override
  State<ReupChoisePage> createState() => _reupChoiseState();
}

class _reupChoiseState extends State<ReupChoisePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
      height: widget.showMoreButton == true ? 500 : 440, //446
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Text(
                widget.data.title,
                style: CustomTextStyle.reupChoiseTitle,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text(
              widget.data.text,
              style: CustomTextStyle.reupChoiseText,
            ),
          ),
          widget.showMoreButton == true
              ? Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: IconButton(
                      onPressed: null,
                      icon: SvgPicture.asset('assets/icons/more_icon.svg'),
                      iconSize: 64,
                      style: const ButtonStyle(
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                    ),
                  ),
                )
              : SizedBox(
                  height: 16,
                ),
          widget.data.img,
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
