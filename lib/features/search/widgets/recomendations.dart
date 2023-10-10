import 'package:flutter/material.dart';

import 'package:reup/features/common/styles.dart';

class Recomendations extends StatefulWidget {
  final List<String> searches;
  const Recomendations({super.key, required this.searches});

  @override
  State<Recomendations> createState() => _RecomendationsState();
}

class _RecomendationsState extends State<Recomendations> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'больше интересного',
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
                  style: CustomTextStyle.reupCartSummary,
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
