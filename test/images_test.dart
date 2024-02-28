import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:travel_app/utils/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.home).existsSync(), isTrue);
    expect(File(Images.home1).existsSync(), isTrue);
    expect(File(Images.menu).existsSync(), isTrue);
    expect(File(Images.menu2).existsSync(), isTrue);
    expect(File(Images.qrCode).existsSync(), isTrue);
    expect(File(Images.shop).existsSync(), isTrue);
    expect(File(Images.shop2).existsSync(), isTrue);
    expect(File(Images.vector).existsSync(), isTrue);
    expect(File(Images.avatar).existsSync(), isTrue);
    expect(File(Images.back).existsSync(), isTrue);
    expect(File(Images.card).existsSync(), isTrue);
    expect(File(Images.cardBack).existsSync(), isTrue);
    expect(File(Images.content1).existsSync(), isTrue);
    expect(File(Images.content2).existsSync(), isTrue);
    expect(File(Images.content3).existsSync(), isTrue);
    expect(File(Images.image36).existsSync(), isTrue);
    expect(File(Images.image50).existsSync(), isTrue);
    expect(File(Images.image51).existsSync(), isTrue);
    expect(File(Images.item1).existsSync(), isTrue);
    expect(File(Images.item10).existsSync(), isTrue);
    expect(File(Images.item11).existsSync(), isTrue);
    expect(File(Images.item2).existsSync(), isTrue);
    expect(File(Images.item3).existsSync(), isTrue);
    expect(File(Images.item4).existsSync(), isTrue);
    expect(File(Images.item5).existsSync(), isTrue);
    expect(File(Images.item6).existsSync(), isTrue);
    expect(File(Images.item7).existsSync(), isTrue);
    expect(File(Images.item8).existsSync(), isTrue);
    expect(File(Images.item9).existsSync(), isTrue);
    expect(File(Images.mdiHeart).existsSync(), isTrue);
    expect(File(Images.mdiHeart2).existsSync(), isTrue);
    expect(File(Images.notification).existsSync(), isTrue);
    expect(File(Images.scan).existsSync(), isTrue);
    expect(File(Images.search).existsSync(), isTrue);
  });
}
