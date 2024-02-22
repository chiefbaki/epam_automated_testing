import 'package:flutter/material.dart';
import 'package:travel_app/presentation/widgets/custom_bottomnav.dart';
import 'package:travel_app/utils/consts/themes/app_colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        fontFamily: "SF Pro",
        scaffoldBackgroundColor: AppColors.scaffoldBgColor,
        appBarTheme: const AppBarTheme(
          color: AppColors.scaffoldBgColor
        ),
      ),
      home: const CustomBottomNavBar(title: "Home",),
    );
  }
}