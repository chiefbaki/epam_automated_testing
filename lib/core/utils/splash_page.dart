import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/core/config/routes/app_router.gr.dart';
import 'package:travel_app/core/config/themes/app_colors.dart';
import 'package:travel_app/core/config/themes/app_fonts.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void routing() async {
    Future.delayed(const Duration(seconds: 2), () {
      context.router.push(const LoginRoute());
    });
  }

  @override
  void initState() {
    super.initState();
    routing();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                    width: 311,
                    child: Text(
              "Tech accessories:\nwhere function meets fashion",
              style: AppFonts.s25w400.copyWith(color: AppColors.black),
              textAlign: TextAlign.center,
                    ),
                  ),
            ],
          ),
        ));
  }
}
