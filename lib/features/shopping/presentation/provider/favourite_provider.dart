import 'package:flutter/material.dart';

class ShoppingProvider extends ChangeNotifier {
  bool isVisibleOne = true;
  bool isVisibleTwo = false;

  void changeVisibility() {
    isVisibleOne = !isVisibleOne;
    isVisibleTwo = !isVisibleTwo;
    notifyListeners();
  }

  List<String> basket = [];
}
