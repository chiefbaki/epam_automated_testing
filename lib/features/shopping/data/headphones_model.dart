import 'package:travel_app/core/utils/resources/resources.dart';

class HeadPhonesModel {
  String? price;
  String? name;
  String? img;
  String? model;
  String? id;
  HeadPhonesModel(
      {required this.model,
      required this.name,
      required this.price,
      required this.img,
      required this.id});

  static List<HeadPhonesModel> get models {
    return [
      HeadPhonesModel(
        id: "1",
          model: "AirPods",
          name: "2nd generation",
          price: "129",
          img: Images.headphones1),
      HeadPhonesModel(
        id: "2",
          model: "AirPods",
          name: "3rd generation",
          price: "169",
          img: Images.headphones2),
      HeadPhonesModel(
        id: "3",
          model: "AirPods Pro",
          name: "2nd generation",
          price: "249",
          img: Images.headphones3),
      HeadPhonesModel(
        id: "4",
          model: "AirPods max",
          name: "2nd generation",
          price: "549",
          img: Images.headphones4),
    ];
  }
}
