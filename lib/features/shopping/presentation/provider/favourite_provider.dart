import 'package:flutter/material.dart';

class FavouriteProvider extends ChangeNotifier {
  bool isTapped = false;
  bool isVisibleOne = true;
  bool isVisibleTwo = false;

  void changeVisibility(){
    isVisibleOne = !isVisibleOne;
    isVisibleTwo = !isVisibleTwo;
    notifyListeners();
  }

  IconData changeIcon() {
    return isTapped ? Icons.favorite : Icons.favorite_border;
  }
  void changeState(){
    isTapped = !isTapped;
    notifyListeners();
  }
}
