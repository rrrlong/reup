import 'package:flutter/material.dart';
import 'package:reup/features/common/styles.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'пока что пусто...',
              style: CustomTextStyle.reupCartName,
              maxLines: 1,
            ),
          ),
          const SizedBox(
            height: 32,
          ),

          // TODO растянуть кнопку
          OutlinedButton(
              onPressed: null,
              style: OutlinedButton.styleFrom(
                  minimumSize: Size(double.infinity, 42),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  side: const BorderSide(color: Colors.black, width: 1),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  )),
              child: const Text('перейти к покупкам',
                  style: CustomButtonTextStyle.buttonBoldStyle))
        ],
      ),
    );
  }
}
