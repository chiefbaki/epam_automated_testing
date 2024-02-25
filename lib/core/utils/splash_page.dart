import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_app/core/config/themes/app_colors.dart';
import 'package:travel_app/core/config/themes/app_fonts.dart';
import 'package:travel_app/core/utils/consts/consts.dart';
import 'package:travel_app/features/auth_page/presentation/pages/login_page.dart';
import 'package:travel_app/features/widgets/custom_bottomnav.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void routing() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLogined = prefs.getBool(Consts.isLogined) ?? false;
    if (isLogined) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const CustomBottomNavBar()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.fadeIn(
      backgroundColor: Colors.white,
      onInit: () {
        debugPrint("On Init");
      },
      onEnd: () {
        debugPrint("On End");
      },
      childWidget: SizedBox(
        width: 311,
        child: Text(
          "Tech accessories:\nwhere function meets fashion",
          style: AppFonts.s25w400.copyWith(color: AppColors.black),
          textAlign: TextAlign.center,
        ),
      ),
      onAnimationEnd: () => debugPrint("On Fade In End"),
      nextScreen: const LoginPage(),
    );
  }
}
