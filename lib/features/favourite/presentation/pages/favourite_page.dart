import 'package:flutter/material.dart';
import 'package:travel_app/core/utils/resources/resources.dart';
import 'package:travel_app/features/widgets/custom_carousel.dart';
import 'package:travel_app/features/widgets/search_text_field.dart';
import 'package:travel_app/features/widgets/shop_carousel_first_item.dart';


class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    const List<String> tempImgLst = [
      Images.item1,
      Images.item2,
      Images.item3,
      Images.item4,
      Images.item5,
      Images.item6
    ];

    const List<String> tempNameLst = [
      "AirPods",
      "Mac",
      "IPhone",
      "IPad",
      "Apple Watch",
      "Apple Vision Pro"
    ];

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 49),
            child: Column(
              children: [
                SearchTextField(controller: TextEditingController()),
                const SizedBox(
                  height: 12,
                ),
                const CustomCarousel(
                    widgets: [ShopCarouselFirst(), ShopCarouselFirst()], width: 720)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
