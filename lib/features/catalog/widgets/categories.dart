import 'package:flutter/material.dart';

class CategoriesTile extends StatelessWidget {
  const CategoriesTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: null,
                child: Container(
                    height: 160,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Image.asset(
                      'assets/images/reup_outerwear.jpg',
                      fit: BoxFit.fill,
                    )),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: null,
                child: Container(
                    height: 160,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Image.asset(
                      'assets/images/reup_footwear.jpg',
                      fit: BoxFit.fill,
                    )),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: null,
                child: Container(
                    height: 160,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Image.asset(
                      'assets/images/reup_pants.jpg',
                      fit: BoxFit.fill,
                    )),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: null,
                child: Container(
                    height: 160,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Image.asset(
                      'assets/images/reup_accessories.jpg',
                      fit: BoxFit.fill,
                    )),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: null,
                child: Container(
                    height: 160,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Image.asset(
                      'assets/images/reup_bags.jpg',
                      fit: BoxFit.fill,
                    )),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: null,
                child: Container(
                    height: 160,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Image.asset(
                      'assets/images/reup_shirts.jpg',
                      fit: BoxFit.fill,
                    )),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: null,
                child: Container(
                    height: 160,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Image.asset(
                      'assets/images/reup_dresses.jpg',
                      fit: BoxFit.fill,
                    )),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: null,
                child: Container(
                    height: 160,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Image.asset(
                      'assets/images/reup_costumes.jpg',
                      fit: BoxFit.fill,
                    )),
              ),
            )
          ],
        )
      ],
    );
  }
}
