import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';


class CustomCarousel extends StatelessWidget {
  final List<Widget> widgets;
  final double width;
  const CustomCarousel({super.key, required this.widgets, this.width = 200});

  @override
  Widget build(BuildContext context) {
    return BannerCarousel(
        animation: false,
        height: width,
        width: double.infinity,
        viewportFraction: 1,
        showIndicator: true,
        customizedBanners: widgets);
  }
}
