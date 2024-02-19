import 'package:flutter/material.dart';
import 'package:travel_app/presentation/screens/home_screen.dart';
import 'package:travel_app/presentation/widgets/custom_bottomnav.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "SF Pro"
      ),
      home: CustomBottomNavBar(title: "Home",),
    );
  }
}