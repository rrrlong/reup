import 'package:flutter/material.dart';
import 'package:reup/features/catalog/widgets/categories.dart';
import 'package:reup/features/common/styles.dart';
import 'package:reup/features/categories/categories.dart';

class ButtonsCarousel extends StatefulWidget {
  const ButtonsCarousel({super.key});

  @override
  State<ButtonsCarousel> createState() => _ButtonsCarouselState();
}

class ButtonData {
  final String buttonText;
  bool isSelected;
  ButtonData(this.buttonText, this.isSelected);
}

class _ButtonsCarouselState extends State<ButtonsCarousel> {
  final List<ButtonData> buttonData = [
    ButtonData('все', true),
    ButtonData('локальные бренды', false),
    ButtonData('vintage', false),
    ButtonData('селективные секонд - хенды', false),
    ButtonData('upcycle', false),
    ButtonData('вторые ручки', false),
    ButtonData('sale', false),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 34,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(buttonData.length, (index) {
            return CatalogButton(
              buttonText: buttonData[index].buttonText,
              isSelected: buttonData[index].isSelected,
              onTap: () {
                setState(() {
                  for (var i in buttonData) {
                    i.isSelected = false;
                  }
                  buttonData[index].isSelected = true;
                  if (index == 2) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Categories()));
                  }
                  // тут будет код смены контента
                });
              },
            );
          }),
        ));
  }
}

class CatalogButton extends StatelessWidget {
  final String buttonText;
  final bool isSelected;
  final VoidCallback onTap;
  const CatalogButton(
      {super.key,
      required this.buttonText,
      required this.onTap,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          backgroundColor: isSelected
              ? const Color.fromARGB(255, 121, 145, 245)
              : Colors.white,
          padding: const EdgeInsets.only(left: 16, right: 16),
          side: const BorderSide(color: Colors.black, width: 1),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          )),
      onPressed: onTap,
      child: Text(buttonText,
          style: isSelected
              ? CustomButtonTextStyle.buttonItemStyleWhite
              : CustomButtonTextStyle.buttonItemStyle),
    );
  }
}
