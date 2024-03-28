import 'package:flutter/material.dart';
import 'package:travel_app/features/shopping/data/headphones_model.dart';

class FavouriteProvider extends ChangeNotifier {
  final List<HeadPhonesModel> _basket = [];

  List<HeadPhonesModel> get getBasket => _basket;

  void addProduct(HeadPhonesModel model) {
    final exist = _basket.any((item) => item.id == model.id);
    if (exist) {
      _basket.removeWhere((item) => item.id == model.id);
    } else {
      _basket.add(model);
    }
    notifyListeners();
  }

  bool isExist(HeadPhonesModel model) {
    final exist = _basket.any((item) => item.id == model.id);
    return exist;
  }
}
