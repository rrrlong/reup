import 'package:flutter/material.dart';
import 'package:reup/assets/res/resources.dart';
import 'package:reup/features/common/widgets/image_widget.dart';
import 'package:reup/features/main/widgets/collection.dart';

class CollectionsSection extends StatelessWidget {
  const CollectionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Collection(
            data: CollectionData(
              'Название коллекции', 'бренд',
              const ImageWidget(Images.reupCollection),
              // old
              // Image.asset('assets/images/reup_collection.jpg'),
            ),
          ),
          Collection(
            data: CollectionData(
              'Название коллекции', 'бренд',
              const ImageWidget(Images.reupCollection),
              // old
              // Image.asset('assets/images/reup_collection.jpg'),
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Collection(
            data: CollectionData(
              'Название коллекции', 'бренд',
              const ImageWidget(Images.reupCollection),
              // old
              // Image.asset('assets/images/reup_collection.jpg'),
            ),
          ),
          Collection(
            data: CollectionData(
              'Название коллекции', 'бренд',
              const ImageWidget(Images.reupCollection),
              // old
              // Image.asset('assets/images/reup_collection.jpg'),
            ),
          ),
        ],
      ),
    ]);
  }
}
