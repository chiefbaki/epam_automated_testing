import 'package:flutter/material.dart';
import 'package:travel_app/presentation/widgets/ask_specialist_widget.dart';
import 'package:travel_app/presentation/widgets/custom_carousel.dart';
import 'package:travel_app/presentation/widgets/custom_choicechip.dart';
import 'package:travel_app/presentation/widgets/item_card.dart';
import 'package:travel_app/presentation/widgets/search_text_field.dart';
import 'package:travel_app/presentation/widgets/shop_carousel_first_item.dart';
import 'package:travel_app/utils/consts/themes/app_colors.dart';
import 'package:travel_app/utils/consts/themes/app_fonts.dart';
import 'package:travel_app/utils/resources/resources.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
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
