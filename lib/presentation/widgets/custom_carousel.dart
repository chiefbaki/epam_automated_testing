import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';


class CustomCarousel extends StatelessWidget {
  final List<Widget> widgets;
  const CustomCarousel({super.key, required this.widgets});

  @override
  Widget build(BuildContext context) {
    return BannerCarousel(
        animation: true,
        height: 200,
        width: double.infinity,
        viewportFraction: 1,
        showIndicator: true,
        customizedBanners: widgets);
  }
}
