import 'package:flutter/material.dart';
import 'package:travel_app/utils/consts/themes/app_colors.dart';
import 'package:travel_app/utils/consts/themes/app_fonts.dart';

class CustomChoiceChip extends StatefulWidget {
  const CustomChoiceChip({super.key});

  @override
  State<CustomChoiceChip> createState() => _CustomChoiceChipState();
}

class _CustomChoiceChipState extends State<CustomChoiceChip> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    const List<String> tempChoice = [
      "Order Status",
      "Shopping Help",
      "Returns",
      "Your Saves"
    ];
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: tempChoice.length,
        itemBuilder: (context, index) {
          return ChoiceChip(
            label: Text(tempChoice[index]),
            selected: selectedIndex == index,
            labelStyle: AppFonts.s10w500.copyWith(
                color:
                    selectedIndex == index ? AppColors.white : AppColors.black),
            backgroundColor: AppColors.white,
            selectedColor: AppColors.selectedItem,
            onSelected: (value) {
              selectedIndex = index;
              setState(() {});
            },
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 7,
          );
        },
      ),
    );
  }
}
