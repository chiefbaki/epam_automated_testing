import 'package:flutter/material.dart';
import 'package:travel_app/core/config/themes/app_colors.dart';
import 'package:travel_app/core/config/themes/app_fonts.dart';
import 'package:travel_app/features/widgets/ask_specialist_widget.dart';
import 'package:travel_app/features/widgets/custom_choicechip.dart';
import 'package:travel_app/features/widgets/item_card.dart';

class ShopCarouselFirst extends StatelessWidget {
  final List<String> name;
  
  final List<String> img;
  const ShopCarouselFirst({super.key, required this.name, required this.img,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: 156,
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 12,
                    color:
                        AppColors.greyBorderColor, // Цвет текста по умолчанию
                  ),
                  children: [
                    TextSpan(
                        text: 'Store', // Слово, которое нужно сделать жирным
                        style: AppFonts.s12w700
                            .copyWith(color: AppColors.black)),
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
                itemCount: name.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return ItemCard(
                    
                    img: img[index],
                    name: name[index],
                  );
                }),
          ),
          const CustomChoiceChip(),
          const AskSpecialistWidget()
        ],
      ),
    );
  }
}
