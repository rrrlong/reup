import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:reup/assets/res/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.cartProduct).existsSync(), isTrue);
    expect(File(Images.catalogAccessories).existsSync(), isTrue);
    expect(File(Images.catalogBags).existsSync(), isTrue);
    expect(File(Images.catalogCostumes).existsSync(), isTrue);
    expect(File(Images.catalogDresses).existsSync(), isTrue);
    expect(File(Images.catalogFootwear).existsSync(), isTrue);
    expect(File(Images.catalogOuterwear).existsSync(), isTrue);
    expect(File(Images.catalogPants).existsSync(), isTrue);
    expect(File(Images.catalogShirts).existsSync(), isTrue);
    expect(File(Images.categoriesVintage).existsSync(), isTrue);
    expect(File(Images.mainAd1).existsSync(), isTrue);
    expect(File(Images.mainAd2).existsSync(), isTrue);
    expect(File(Images.mainAd3).existsSync(), isTrue);
    expect(File(Images.mainAd4).existsSync(), isTrue);
    expect(File(Images.mainAd5).existsSync(), isTrue);
    expect(File(Images.mainAd6).existsSync(), isTrue);
    expect(File(Images.mainBanner1).existsSync(), isTrue);
    expect(File(Images.mainBanner2).existsSync(), isTrue);
    expect(File(Images.mainCollection).existsSync(), isTrue);
    expect(File(Images.mainReupChoice).existsSync(), isTrue);
    expect(File(Images.mockProduct).existsSync(), isTrue);
    expect(File(Images.reupBp1Ad11).existsSync(), isTrue);
    expect(File(Images.reupBp1Ad12).existsSync(), isTrue);
    expect(File(Images.reupBp1Promo).existsSync(), isTrue);
    expect(File(Images.reupBp1Promo2).existsSync(), isTrue);
    expect(File(Images.reupBp2Promo).existsSync(), isTrue);
    expect(File(Images.reupBrandFuse).existsSync(), isTrue);
    expect(File(Images.reupBrandFuseItem1).existsSync(), isTrue);
    expect(File(Images.reupBrandFuseItem2).existsSync(), isTrue);
    expect(File(Images.searchProduct).existsSync(), isTrue);
    expect(File(Images.splash1).existsSync(), isTrue);
    expect(File(Images.splash2).existsSync(), isTrue);
    expect(File(Images.splash3).existsSync(), isTrue);
    expect(File(Images.splash4).existsSync(), isTrue);
    expect(File(Images.splash5).existsSync(), isTrue);
    expect(File(Images.splash6).existsSync(), isTrue);
    expect(File(Images.splash7).existsSync(), isTrue);
    expect(File(Images.splash8).existsSync(), isTrue);
    expect(File(Images.splash9).existsSync(), isTrue);
  });
}
