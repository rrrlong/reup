import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:reup/assets/res/resources.dart';
import 'package:reup/features/common/widgets/image_widget.dart';
// import 'package:reup/features/brand_page/brand_page_1.dart';
import 'package:reup/features/common/styles.dart';
// import 'package:reup/features/brand_page/brand_page_2.dart';

//controller for promo
final controller = PageController(
  initialPage: 0,
);

late Timer _timer;

int currentPage = 0;

class Promo extends StatefulWidget {
  const Promo({
    super.key,
  });

  @override
  State<Promo> createState() => _PromoState();
}

class _PromoState extends State<Promo> {
  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 7), (Timer timer) {
      if (currentPage < 3) {
        currentPage++;
      } else {
        currentPage = 0;
      }

      controller.animateToPage(currentPage,
          duration: const Duration(milliseconds: 350), curve: Curves.easeIn);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 779, //774, //734, //678
      child: PageView(
        controller: controller,
        onPageChanged: (index) {
          currentPage = index;
          _timer.cancel();
          _timer = Timer.periodic(const Duration(seconds: 7), (Timer timer) {
            if (currentPage < 3) {
              currentPage++;
            } else {
              currentPage = 0;
            }

            controller.animateToPage(currentPage,
                duration: const Duration(milliseconds: 350),
                curve: Curves.easeIn);
          });
          // TODO остановка и запуск таймера
        },
        children: [
          PromoPage(
              data: PromoData(
                  ImageWidget(Images.mainBanner1),
                  ImageWidget(Images.mainBanner2),
                  // old
                  // const Image(image: AssetImage('assets/images/reup_img1.jpg')),
                  // const Image(image: AssetImage('assets/images/reup_img2.jpg')),
                  'новый бренд',
                  'Befree',
                  'Наше дело не так однозначно, как может показаться: существующая теория напрямую зависит от стандартных подходов. Идейные соображения высшего порядка, а также разбавленное изрядной долей ')),
          PromoPage(
              data: PromoData(
                  ImageWidget(Images.mainBanner1),
                  ImageWidget(Images.mainBanner2),
                  // old
                  // const Image(image: AssetImage('assets/images/reup_img1.jpg')),
                  // const Image(image: AssetImage('assets/images/reup_img2.jpg')),
                  '2',
                  '2',
                  '22222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222 ')),
          PromoPage(
              data: PromoData(
                  ImageWidget(Images.mainBanner1),
                  ImageWidget(Images.mainBanner2),
                  // old
                  // const Image(image: AssetImage('assets/images/reup_img1.jpg')),
                  // const Image(image: AssetImage('assets/images/reup_img2.jpg')),
                  '3',
                  '3',
                  '3333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333 ')),
          PromoPage(
              data: PromoData(
                  ImageWidget(Images.mainBanner1),
                  ImageWidget(Images.mainBanner2),
                  // old
                  // const Image(image: AssetImage('assets/images/reup_img1.jpg')),
                  // const Image(image: AssetImage('assets/images/reup_img2.jpg')),
                  '4',
                  '4',
                  '4444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444 ')),
        ],
      ),
    );
  }
}

class PromoData {
  final Widget img1;
  final Widget img2;
  // old
  // final Image img1;
  // final Image img2;
  final String title;
  final String subtitle;
  final String text;

  PromoData(this.img1, this.img2, this.title, this.subtitle, this.text);
}

class PromoPage extends StatelessWidget {
  final PromoData data;
  const PromoPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      data.img1,
      data.img2,
      Container(
          //height: 284, //276 284
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(data.title,
                    style: CustomTextStyle.titlePromoTextStyle),
              ),
              const SizedBox(height: 20),
              Container(
                // линия
                width: double.infinity,
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.50,
                      //strokeAlign:
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                //height: 161,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(data.subtitle,
                          style: CustomTextStyle.subtitlePromoTextStyle),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          data.text,
                          maxLines: 5,
                          style: CustomTextStyle.promoTextStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Align(
                        //more button
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          onPressed: (() {
                            // if (currentPage == 0) {
                            //   Navigator.of(context).push(MaterialPageRoute(
                            //       builder: (context) => BrandPage2()));
                            // } else {
                            //   Navigator.of(context).push(MaterialPageRoute(
                            //       builder: (context) => BrandPage1()));
                            // }

                            log('more');
                          }),
                          icon: const ImageWidget(SvgIcons.moreIcon),
                          // old
                          // icon: SvgPicture.asset(
                          //     'assets/icons/reup_icon_more.svg'),
                          iconSize: 64,
                          style: const ButtonStyle(
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                        ),
                      )
                    ]),
              ),
            ],
          ))
    ]);
  }
}
