import 'package:travel_app/core/utils/resources/resources.dart';

class HeadPhonesModel {
  String? price;
  String? name;
  String? img;
  String? model;
  HeadPhonesModel(
      {required this.model,
      required this.name,
      required this.price,
      required this.img});

  static List<HeadPhonesModel> get models {
    return [
      HeadPhonesModel(
          model: "AirPods",
          name: "2nd generation",
          price: "129",
          img: Images.headphones1),
      HeadPhonesModel(
          model: "AirPods",
          name: "3rd generation",
          price: "169",
          img: Images.headphones2),
      HeadPhonesModel(
          model: "AirPods Pro",
          name: "2nd generation",
          price: "249",
          img: Images.headphones3),
      HeadPhonesModel(
          model: "AirPods max",
          name: "2nd generation",
          price: "549",
          img: Images.headphones4),
    ];
  }
}
