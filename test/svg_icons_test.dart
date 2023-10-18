import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:reup/assets/res/resources.dart';

void main() {
  test('svg_icons assets test', () {
    expect(File(SvgIcons.backArrowIcon).existsSync(), isTrue);
    expect(File(SvgIcons.cartIcon).existsSync(), isTrue);
    expect(File(SvgIcons.catalogIcon).existsSync(), isTrue);
    expect(File(SvgIcons.crossIcon).existsSync(), isTrue);
    expect(File(SvgIcons.favoriteIcon).existsSync(), isTrue);
    expect(File(SvgIcons.fbIcon).existsSync(), isTrue);
    expect(File(SvgIcons.forwardArrowIcon).existsSync(), isTrue);
    expect(File(SvgIcons.instIcon).existsSync(), isTrue);
    expect(File(SvgIcons.minusIcon).existsSync(), isTrue);
    expect(File(SvgIcons.moreIcon).existsSync(), isTrue);
    expect(File(SvgIcons.plusIcon).existsSync(), isTrue);
    expect(File(SvgIcons.profileIcon).existsSync(), isTrue);
    expect(File(SvgIcons.radioButtonActiveIcon).existsSync(), isTrue);
    expect(File(SvgIcons.radioButtonDisabledIcon).existsSync(), isTrue);
    expect(File(SvgIcons.reupIcon).existsSync(), isTrue);
    expect(File(SvgIcons.searchIcon).existsSync(), isTrue);
    expect(File(SvgIcons.tgIcon).existsSync(), isTrue);
    expect(File(SvgIcons.trashCanIcon).existsSync(), isTrue);
    expect(File(SvgIcons.upcycleTextIcon).existsSync(), isTrue);
    expect(File(SvgIcons.vkIcon).existsSync(), isTrue);
  });
}
