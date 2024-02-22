import 'package:flutter/material.dart';
import 'package:travel_app/presentation/widgets/ask_specialist_widget.dart';
import 'package:travel_app/presentation/widgets/custom_choicechip.dart';
import 'package:travel_app/presentation/widgets/item_card.dart';
import 'package:travel_app/utils/consts/themes/app_colors.dart';
import 'package:travel_app/utils/consts/themes/app_fonts.dart';
import 'package:travel_app/utils/resources/resources.dart';

class ShopCarouselFirst extends StatelessWidget {
  const ShopCarouselFirst({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> tempImgLst1 = [
      Images.item1,
      Images.item2,
      Images.item3,
      Images.item4,
      Images.item5,
      Images.item6
    ];

    const List<String> tempImgLst2 = [
      Images.item7,
      Images.item8,
      Images.item9,
      Images.item10,
      Images.item11,
      
    ];
    
    const List<String> tempNameLst2 = [
      "HomePod",
      "Accessories",
      "Apple Gift Card",
      "AirTag",
      "Apple TV 4K"
    ];

    const List<String> tempNameLst1 = [
      "AirPods",
      "Mac",
      "IPhone",
      "IPad",
      "Apple Watch",
      "Apple Vision Pro"
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
            width: 156,
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors.greyBorderColor, // Цвет текста по умолчанию
                ),
                children: [
                  TextSpan(
                      text: 'Store', // Слово, которое нужно сделать жирным
                      style: AppFonts.s12w700.copyWith(color: AppColors.black)),
                  const TextSpan(
                    text:
                        '. The best way to\nbuy the products you\nlove.', // Остальной текст
                  ),
                ],
              ),
            )),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.52,
          child: GridView.builder(
              shrinkWrap: true,
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: tempNameLst2.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return ItemCard(
                  img: tempImgLst2[index],
                  name: tempNameLst2[index],
                );
              }),
        ),
        const CustomChoiceChip(),
        const AskSpecialistWidget()
      ],
    );
  }
}
