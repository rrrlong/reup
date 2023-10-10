import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:reup/features/common/styles.dart';

final GlobalKey _widgetKey = GlobalKey();

class RecentSearch extends StatefulWidget {
  final List<String> searches;
  const RecentSearch({super.key, required this.searches});

  @override
  State<RecentSearch> createState() => _RecentSearchState();
}

class _RecentSearchState extends State<RecentSearch> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'вы недавно искали',
          style: CustomButtonTextStyle.buttonItemStyle,
        ),
        const SizedBox(
          height: 16,
        ),
        Column(
          children: List.generate(widget.searches.length, (index) {
            return RecentSearchRow(search: widget.searches[index]);
          }),
        )
      ],
    );
  }
}

class RecentSearchRow extends StatelessWidget {
  final String search;
  const RecentSearchRow({super.key, required this.search});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            search,
            style: CustomTextStyle.promoTextStyle,
            maxLines: 1,
          ),
          const Spacer(),
          GestureDetector(
            onTap: (() {
              log('delete');
            }),
            child: const Icon(
              Icons.close_rounded,
              size: 15,
              color: Colors.black,
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 16,
      ),
    ]);
  }
}
