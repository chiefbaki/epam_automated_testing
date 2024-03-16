import 'package:flutter/material.dart';
import 'package:travel_app/core/config/themes/app_colors.dart';
import 'package:travel_app/core/config/themes/app_fonts.dart';
import 'package:travel_app/core/utils/resources/resources.dart';

class LocationCard extends StatelessWidget {
  final String name;
  final String address;
  final String img;
  const LocationCard({
    super.key,
    required this.name,
    required this.address,
    required this.img
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 145,
      height: 140,
      decoration: const BoxDecoration(color: AppColors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            img,
            width: 145,
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: AppFonts.s7w500,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  address,
                  style: AppFonts.s6w300
                      .copyWith(color: AppColors.greyBorderColor),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  "Opens at 10:00 a.m.",
                  style: AppFonts.s6w300
                      .copyWith(color: AppColors.greyBorderColor),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
