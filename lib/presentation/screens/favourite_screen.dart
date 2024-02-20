import 'package:flutter/material.dart';
import 'package:travel_app/utils/consts/themes/app_colors.dart';
import 'package:travel_app/utils/consts/themes/app_fonts.dart';
import 'package:travel_app/utils/resources/resources.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              
            Container(
              width: 390,
              height: 240,
                decoration: BoxDecoration(
                  color: Colors.green,
                  // gradient:
                  //     const LinearGradient(colors: AppColors.cardGradientColor),
                  // borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(
                      Images.cardBack,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
