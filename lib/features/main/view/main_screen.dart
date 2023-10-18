import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reup/assets/res/resources.dart';

import 'package:reup/features/common/carousel.dart';
import 'package:reup/features/common/styles.dart';
import 'package:reup/features/common/widgets/image_widget.dart';
import 'package:reup/features/main/widgets/widgets.dart';
import 'package:reup/features/navigation/domain/entity/app_route_names.dart';
import 'package:reup/l10n/app_localizations_x.dart';

@RoutePage(
  name: AppRouteNames.mainScreen,
)
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return SafeArea(
    //   child: CustomScrollView(
    //     slivers: [
    //       SliverToBoxAdapter(
    //         child: Promo(),
    //       ),
    //     ],
    //   ),
    // );

    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(48),
          child: MainAppBar(),
        ),
        body:

            // original
            SingleChildScrollView(
          child: Column(
            children: [
              //промо
              Promo(),

              // ряды кнопок с категориями товаров

              CategoryButtons(),

              // тут кончаются кнопки

              const SizedBox(height: 48),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    // context.l10n.test, // TODO: change with l10n
                    'подобрали для тебя',
                    style: CustomTextStyle.headerTextStyle,
                    // style: AppTextTheme.base().regular14, // TODO: change TextStyle
                  ),
                ),
              ),

              const SizedBox(height: 16),
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 8), child: Carousel()
                      //SizedBox(height: 292, child: Carousel())
                      )),
              //const SizedBox(height: 16),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: IconButton(
                    onPressed: null,
                    icon: ImageWidget(SvgIcons.moreIcon),
                    // old
                    // icon: SvgPicture.asset('assets/icons/more_icon.svg'),
                    iconSize: 64,
                    style: ButtonStyle(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text('выбор REUP',
                      style: CustomTextStyle.headerTextStyle),
                ),
              ),

              //карусель выбора reup
              ReupChoise(
                controllerReupChoise: PageController(initialPage: 0),
                color: const Color.fromARGB(255, 188, 218, 99),
                showMoreButton: true,
              ),

              // раздел с коллекциями
              Container(
                width: MediaQuery.of(context).size.width,
                color: const Color.fromARGB(255, 188, 218, 99),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 48),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        'Коллекции',
                        style: CustomTextStyle.headerTextStyle,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CollectionsSection(),
                        const SizedBox(
                          height: 48,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Text(
                              'мне нравится',
                              textAlign: TextAlign.right,
                              style: CustomTextStyle.headerTextStyle,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Carousel())),
                        const Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            onPressed: null,
                            icon: ImageWidget(SvgIcons.moreIcon),
                            // old
                            // icon: SvgPicture.asset(
                            //     'assets/icons/more_icon.svg'),
                            iconSize: 64,
                            style: ButtonStyle(
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //анимашка
              //UpcycleWidget(),
              //tr(),
              const SizedBox(
                height: 48,
              ),

              // карусель товаров
              const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 8), child: Carousel())),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: IconButton(
                    onPressed: null,
                    icon: ImageWidget(SvgIcons.moreIcon),
                    // old
                    // icon: SvgPicture.asset('assets/icons/more_icon.svg'),
                    iconSize: 64,
                    style: ButtonStyle(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                ),
              ),

              const AdSection(),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
