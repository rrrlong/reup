import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reup/features/common/styles.dart';
import 'package:reup/features/search/search.dart';

class TopBarCategories extends StatelessWidget {
  const TopBarCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
          style: IconButton.styleFrom(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap),
          onPressed: (() {
            Navigator.of(context).pop();
          }),
          icon: SvgPicture.asset('assets/icons/reup_icon_back_arrow.svg'),
        ),
        const Text(
          'каталог',
          style: CustomTextStyle.reupCartName,
          maxLines: 1,
        ),
        IconButton(
          onPressed: (() {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Search()));
          }),
          icon: SvgPicture.asset('assets/icons/reup_search.svg'),
        )
      ]),
    );
  }
}
