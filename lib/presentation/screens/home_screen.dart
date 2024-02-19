import 'package:flutter/material.dart';
import 'package:travel_app/presentation/widgets/scan_btn.dart';
import 'package:travel_app/presentation/widgets/search_text_field.dart';
import 'package:travel_app/utils/consts/themes/app_colors.dart';
import 'package:travel_app/utils/consts/themes/app_fonts.dart';
import 'package:travel_app/utils/resources/resources.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                  onPressed: () {}, icon: Image.asset(Images.notification)),
            )
          ],
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            child: Column(
              children: [
                Container(
                  width: 390,
                  height: 240,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: AppColors.cardGradientColor),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bonus card",
                          style:
                              AppFonts.s25w400.copyWith(color: AppColors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "10",
                                  style: AppFonts.s35w400
                                      .copyWith(color: AppColors.white),
                                ),
                                Text(
                                  "bonuses",
                                  style: AppFonts.s25w400
                                      .copyWith(color: AppColors.white),
                                ),
                              ],
                            ),
                            Image.asset(
                              Images.qrCode,
                              width: 127,
                              height: 127,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                SearchTextField(
                  controller: TextEditingController(),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Special offers",
                      style: AppFonts.s14w700,
                    ),
                    Text(
                      "See All",
                      style: AppFonts.s12w400
                          .copyWith(color: AppColors.greyBorderColor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
