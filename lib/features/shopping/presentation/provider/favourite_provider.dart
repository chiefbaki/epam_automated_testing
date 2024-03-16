import 'package:flutter/material.dart';

class FavouriteProvider extends ChangeNotifier {
  bool isVisibleOne = true;
  bool isVisibleTwo = false;

  void changeVisibility() {
    isVisibleOne = !isVisibleOne;
    isVisibleTwo = !isVisibleTwo;
    notifyListeners();
  }
}
