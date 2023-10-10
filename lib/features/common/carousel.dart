import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:reup/assets/res/resources.dart';
import 'package:reup/features/common/widgets/image_widget.dart';
import 'package:reup/features/common/product.dart';
//import 'package:reup/features/favorites/widgets/prod.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  // Wheater to loop through elements
  final bool _loop = false;

  // Scroll controller for carousel
  late InfiniteScrollController _controller;

  // Maintain current index of carousel
  int _selectedIndex = 0;

  // Width of each item
  final double _itemExtent = 191; //175

  // Get screen width of viewport.
  double get screenWidth => MediaQuery.of(context).size.width;

  @override
  void initState() {
    super.initState();
    _controller = InfiniteScrollController(initialItem: _selectedIndex);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 299, //292,
      child: InfiniteCarousel.builder(
          itemCount: 20,
          itemExtent: _itemExtent,
          loop: _loop,
          controller: _controller,
          center: false,
          onIndexChanged: (index) {
            if (_selectedIndex != index) {
              setState(() {
                _selectedIndex = index;
              });
            }
          },
          itemBuilder: (context, itemIndex, realIndex) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GestureDetector(
                  onTap: () {
                    // first item index is 0
                    var s = itemIndex.toString();
                    log(s);
                  },
                  child: Product(
                      data: ProductData(
                          const ImageWidget(Images.reupProduct),
                          // old
                          // Image.asset('assets/images/reup_product.jpg'),
                          'befree',
                          'Блузка женская Лейди',
                          '7500₽')),
                ));
          }),
    );
  }
}
