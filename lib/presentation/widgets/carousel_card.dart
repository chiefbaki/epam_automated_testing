import 'package:flutter/material.dart';
import 'package:travel_app/utils/consts/themes/app_colors.dart';
import 'package:travel_app/utils/consts/themes/app_fonts.dart';
import 'package:travel_app/utils/resources/resources.dart';

class CarouselCard extends StatelessWidget {
  const CarouselCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 178,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 95,
                  height: 18,
                  decoration: BoxDecoration(
                    color: AppColors.fcfcfc,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                      child: Text(
                    "AirPods Max",
                    style: AppFonts.s10w700,
                  )),
                ),
                const SizedBox(
                  height: 23,
                ),
                SizedBox(
                  child: Text(
                    """Our ear cushions feature a custom-\ndesigned mesh textile for pillow-like\nsoftness, paired with acoustically\nengineered memory foam for an\nimmersive sound experience.""",
                    style: AppFonts.s10w600.copyWith(letterSpacing: 0.41),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                SizedBox(
                  width: 90,
                  height: 25,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.green,
                      ),
                      child: Text(
                        "Order now",
                        style:
                            AppFonts.s8w600.copyWith(color: AppColors.fcfcfc),
                        textAlign: TextAlign.center,
                      )),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  Images.image36,
                  width: 76,
                ),
                const SizedBox(
                  width: 17,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Images.image50,
                      width: 45,
                      height: 60,
                    ),
                    Image.asset(
                      Images.image51,
                      width: 45,
                      height: 60,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
