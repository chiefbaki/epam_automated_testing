import 'package:flutter/material.dart';
import 'package:travel_app/core/consts/theme/app_colors.dart';
import 'package:travel_app/core/consts/theme/app_fonts.dart';
import 'package:travel_app/presentation/widgets/custom_elevated_btn.dart';


class PasswordSuccessScreen extends StatelessWidget {
  const PasswordSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 290,
              height: 355,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 19,
                        color: AppColors.lightGrey.withOpacity(0.1),
                        spreadRadius: 1,
                        offset: const Offset(0, -2))
                  ],
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 44, right: 24.5, left: 24.5),
                child: Column(
                  children: [
                    const Text(
                      "Change Password",
                      style: AppFonts.s18w700,
                    ),
                    const SizedBox(
                      height: 18.5,
                    ),
                    Container(
                      width: 243,
                      height: 100,
                      decoration: BoxDecoration(
                        color: AppColors.milkyColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 30, horizontal: 53),
                        child: Text("Your password is now changed.", ),
                      ),
                    ),
                    const SizedBox(
                      height: 19,
                    ),
                    CustomElevatedBtn(onPressed: (){}, title: "Ok", width: 76, height: 33,)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
