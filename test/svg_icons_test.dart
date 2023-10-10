import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:reup/assets/res/resources.dart';

void main() {
  test('svg_icons assets test', () {
    expect(File(SvgIcons.backArrowIcon).existsSync(), isTrue);
    expect(File(SvgIcons.cartIcon).existsSync(), isTrue);
    expect(File(SvgIcons.catalogIcon).existsSync(), isTrue);
    expect(File(SvgIcons.favoriteIcon).existsSync(), isTrue);
    expect(File(SvgIcons.moreIcon).existsSync(), isTrue);
    expect(File(SvgIcons.profileIcon).existsSync(), isTrue);
    expect(File(SvgIcons.reupAd11).existsSync(), isTrue);
    expect(File(SvgIcons.reupAd2).existsSync(), isTrue);
    expect(File(SvgIcons.reupAd31).existsSync(), isTrue);
    expect(File(SvgIcons.reupAd3).existsSync(), isTrue);
    expect(File(SvgIcons.reupIcon).existsSync(), isTrue);
    expect(File(SvgIcons.reupIconCross).existsSync(), isTrue);
    expect(File(SvgIcons.reupIconFb).existsSync(), isTrue);
    expect(File(SvgIcons.reupIconForwardArrow).existsSync(), isTrue);
    expect(File(SvgIcons.reupIconInst).existsSync(), isTrue);
    expect(File(SvgIcons.reupIconMinus).existsSync(), isTrue);
    expect(File(SvgIcons.reupIconMoreButtons).existsSync(), isTrue);
    expect(File(SvgIcons.reupIconPlus).existsSync(), isTrue);
    expect(File(SvgIcons.reupIconTg).existsSync(), isTrue);
    expect(File(SvgIcons.reupIconTrashCan).existsSync(), isTrue);
    expect(File(SvgIcons.reupIconVk).existsSync(), isTrue);
    expect(File(SvgIcons.reupRadioButtonActive).existsSync(), isTrue);
    expect(File(SvgIcons.reupRadioButtonDisabled).existsSync(), isTrue);
    expect(File(SvgIcons.searchIcon).existsSync(), isTrue);
    expect(File(SvgIcons.upcycle).existsSync(), isTrue);
  });
}
