import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:reup/assets/res/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.loadScreen1).existsSync(), isTrue);
    expect(File(Images.loadScreen2).existsSync(), isTrue);
    expect(File(Images.loadScreen3).existsSync(), isTrue);
    expect(File(Images.loadScreen4).existsSync(), isTrue);
    expect(File(Images.loadScreen5).existsSync(), isTrue);
    expect(File(Images.loadScreen6).existsSync(), isTrue);
    expect(File(Images.loadScreen7).existsSync(), isTrue);
    expect(File(Images.loadScreen8).existsSync(), isTrue);
    expect(File(Images.loadScreen9).existsSync(), isTrue);
    expect(File(Images.mainBanner1).existsSync(), isTrue);
    expect(File(Images.mainBanner2).existsSync(), isTrue);
    expect(File(Images.reupAccessories).existsSync(), isTrue);
    expect(File(Images.reupAd11).existsSync(), isTrue);
    expect(File(Images.reupAd1).existsSync(), isTrue);
    expect(File(Images.reupAd21).existsSync(), isTrue);
    expect(File(Images.reupAd3).existsSync(), isTrue);
    expect(File(Images.reupBags).existsSync(), isTrue);
    expect(File(Images.reupBp1Ad11).existsSync(), isTrue);
    expect(File(Images.reupBp1Ad12).existsSync(), isTrue);
    expect(File(Images.reupBp1Promo).existsSync(), isTrue);
    expect(File(Images.reupBp1Promo2).existsSync(), isTrue);
    expect(File(Images.reupBp2Promo).existsSync(), isTrue);
    expect(File(Images.reupBrandFuse).existsSync(), isTrue);
    expect(File(Images.reupBrandFuseItem1).existsSync(), isTrue);
    expect(File(Images.reupBrandFuseItem2).existsSync(), isTrue);
    expect(File(Images.reupCartProduct).existsSync(), isTrue);
    expect(File(Images.reupCollection).existsSync(), isTrue);
    expect(File(Images.reupCostumes).existsSync(), isTrue);
    expect(File(Images.reupDresses).existsSync(), isTrue);
    expect(File(Images.reupFootwear).existsSync(), isTrue);
    expect(File(Images.reupIconInst).existsSync(), isTrue);
    expect(File(Images.reupIconTg).existsSync(), isTrue);
    expect(File(Images.reupImg3).existsSync(), isTrue);
    expect(File(Images.reupOuterwear).existsSync(), isTrue);
    expect(File(Images.reupPants).existsSync(), isTrue);
    expect(File(Images.reupProduct).existsSync(), isTrue);
    expect(File(Images.reupProductSearch).existsSync(), isTrue);
    expect(File(Images.reupShirts).existsSync(), isTrue);
    expect(File(Images.vintage).existsSync(), isTrue);
  });
}
