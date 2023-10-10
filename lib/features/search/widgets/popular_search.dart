import 'package:flutter/material.dart';

import 'package:reup/features/common/styles.dart';

class PopularSearch extends StatefulWidget {
  final List<String> searches;
  const PopularSearch({super.key, required this.searches});

  @override
  State<PopularSearch> createState() => _PopularSearchState();
}

class _PopularSearchState extends State<PopularSearch> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'популярные запросы',
          style: CustomButtonTextStyle.buttonItemStyle,
        ),
        const SizedBox(
          height: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(widget.searches.length, (index) {
            return Column(
              children: [
                Text(
                  widget.searches[index],
                  style: CustomTextStyle.promoTextStyle,
                  maxLines: 1,
                ),
                const SizedBox(
                  height: 8,
                )
              ],
            );
          }),
        )
      ],
    );
  }
}
