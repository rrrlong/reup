import 'package:flutter/material.dart';
import 'package:reup/features/common/styles.dart';

class EmptyFavorites extends StatelessWidget {
  const EmptyFavorites({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(children: [
        const Text(
          'кажется, вам пока ничего не понравилось',
          maxLines: 3,
          style: CustomButtonTextStyle.buttonItemStyle,
        ),
        const SizedBox(
          height: 32,
        ),
        OutlinedButton(
            onPressed: null,
            style: OutlinedButton.styleFrom(
                minimumSize: const Size(double.infinity, 42),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                side: const BorderSide(color: Colors.black, width: 1),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                )),
            child: const Text('отправится на поиски',
                style: CustomButtonTextStyle.buttonBoldStyle))
      ]),
    );
  }
}
