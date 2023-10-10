import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reup/features/common/styles.dart';

class SearchBarText extends StatelessWidget {
  const SearchBarText({
    super.key,
    required this.searchController,
  });

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black))),
      child: TextFormField(
        controller: searchController,
        autofocus: true,
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: (() {
                  log(searchController.text);
                }),
                icon: SvgPicture.asset(
                  'assets/icons/reup_search.svg',
                  width: 16,
                  height: 16,
                )),
            hintText: 'хочу найти...',
            border: InputBorder.none,
            hintStyle: CustomButtonTextStyle.buttonBoldStyle),
      ),
    );
  }
}
