import 'package:flutter/material.dart';
import 'package:travel_app/core/config/themes/app_colors.dart';
import 'package:travel_app/core/config/themes/app_fonts.dart';



class ItemCard extends StatelessWidget {
  final String img;
  final String name;
  const ItemCard({
    super.key,
    required this.img,
    required this.name
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 160,
        height: 155,
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 53,
                height: 17,
                decoration: BoxDecoration(
                    color: AppColors.itemNameColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child: Text(
                  name,
                  style: AppFonts.s6w600,
                )),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                img,
                width: 133,
                height: 71,
              )
            ],
          ),
        ),
      ),
    );
  }
}
