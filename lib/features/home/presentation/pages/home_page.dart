import 'package:flutter/material.dart';
import 'package:travel_app/core/config/themes/app_colors.dart';
import 'package:travel_app/core/config/themes/app_fonts.dart';
import 'package:travel_app/core/utils/resources/resources.dart';
import 'package:travel_app/features/widgets/carousel_card.dart';
import 'package:travel_app/features/widgets/custom_carousel.dart';
import 'package:travel_app/features/widgets/search_text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                  onPressed: () {}, icon: Image.asset(Images.notification)),
            )
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const AlwaysScrollableScrollPhysics(),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 390,
                    height: 240,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage(Images.card))),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bonus card",
                            style: AppFonts.s25w400
                                .copyWith(color: AppColors.white),
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
                  const CustomCarousel(
                    widgets: [
                      CarouselCard(),
                      CarouselCard(),
                      CarouselCard(),
                      CarouselCard()
                    ],
                  ),
                  const Text(
                    "The latest",
                    style: AppFonts.s14w700,
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 2,
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: const AlwaysScrollableScrollPhysics(),
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              Images.content1,
                              width: 152,
                              height: 190,
                            ),
                            Image.asset(Images.content2,
                                width: 152, height: 190),
                            Image.asset(Images.content3,
                                width: 152, height: 190),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
