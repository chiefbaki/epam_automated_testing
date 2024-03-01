import 'package:auto_route/auto_route.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/core/config/routes/app_router.gr.dart';
import 'package:travel_app/core/config/themes/app_colors.dart';
import 'package:travel_app/core/utils/resources/resources.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
        routes: const [
          HomeRoute(),
          ShoppingRoute(),
          FavouriteRoute(),
          LocationRoute()
        ],
        transitionBuilder: (context, child, animation) => FadeTransition(
              opacity: animation,
              child: child,
            ),
        builder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);
          currentIndex = tabsRouter.activeIndex; 
          return Scaffold(
            body: child,
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
              activeIndex: currentIndex,
              
              onTap: (index) {
                tabsRouter.setActiveIndex(index);
              },
              cornerRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(24),
                bottomLeft: Radius.circular(24),
              ),
              elevation: 0,
            ),
          );
        });
  }
}
