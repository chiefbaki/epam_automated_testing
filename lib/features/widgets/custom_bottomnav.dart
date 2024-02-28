import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/core/config/themes/app_colors.dart';
import 'package:travel_app/core/utils/resources/resources.dart';
import 'package:travel_app/features/favourite/presentation/pages/favourite_page.dart';
import 'package:travel_app/features/home/presentation/pages/home_page.dart';


class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({Key? key,}) : super(key: key);

  

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar>
    with SingleTickerProviderStateMixin {
  int _tabIndex = 0;
  int get tabIndex => _tabIndex;
  set tabIndex(int v) {
    _tabIndex = v;
    setState(() {});
  }

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _tabIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CircleNavBar(
        activeIcons: [
          Image.asset(
            Images.home1,
          ),
          Image.asset(Images.shop2),
          Image.asset(Images.mdiHeart2),
          Image.asset(Images.menu2),
        ],
        inactiveIcons: [
          Image.asset(
            Images.home,
          ),
          SvgPicture.asset(Images.shop),
          SvgPicture.asset(Images.mdiHeart),
          SvgPicture.asset(Images.menu),
        ],
        color: AppColors.white,
        gradient: const LinearGradient(colors: AppColors.gradientGreen),
        height: 60,
        circleWidth: 55,
        activeIndex: tabIndex,
        onTap: (index) {
          tabIndex = index;
          pageController.jumpToPage(tabIndex);
        },
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
        ),
        elevation: 0,
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (v) {
          tabIndex = v;
        },
        children: [
          const HomePage(),
          const FavouritePage(),
          Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.blue),
          Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.blue),
        ],
      ),
    );
  }
}
