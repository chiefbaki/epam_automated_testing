import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:travel_app/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.back).existsSync(), isTrue);
  });
}
