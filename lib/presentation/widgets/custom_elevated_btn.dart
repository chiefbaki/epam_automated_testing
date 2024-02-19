import 'package:flutter/material.dart';
import 'package:travel_app/utils/consts/themes/app_colors.dart';
import 'package:travel_app/utils/consts/themes/app_fonts.dart';

class CustomElevatedBtn extends StatelessWidget {
  final Function() onPressed;
  final String title;
  final double width;
  final double height;
  const CustomElevatedBtn(
      {super.key,
      required this.onPressed,
      required this.title,
      this.width = 117,
      this.height = 33});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(
              colors: AppColors.gradientGreen,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight)),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            elevation: 0,
            shape: const RoundedRectangleBorder()),
        child: Text(
          title,
          style: AppFonts.s13w500.copyWith(color: AppColors.white),
        ),
      ),
    );
  }
}
