import 'package:flutter/material.dart';
import 'package:travel_app/utils/consts/themes/app_colors.dart';
import 'package:travel_app/utils/consts/themes/app_fonts.dart';
import 'package:travel_app/presentation/widgets/custom_elevated_btn.dart';
import 'package:travel_app/presentation/widgets/custom_text_btn.dart';
import 'package:travel_app/presentation/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                    const EdgeInsets.only(top:44, right: 24.5, left: 24.5),
                child: Column(
                  children: [
                    const Text(
                      "Login",
                      style: AppFonts.s18w700,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email",
                          style: AppFonts.s12w700
                              .copyWith(color: AppColors.mediumGrey),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        CustomTextField(controller: TextEditingController(), keyboardType: TextInputType.emailAddress,),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Password",
                          style: AppFonts.s12w700
                              .copyWith(color: AppColors.mediumGrey),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        CustomTextField(controller: TextEditingController(), obscureText: true, keyboardType: TextInputType.number,),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomElevatedBtn(
                      onPressed: () {},
                      title: "Sign in",
                    ),
                    CustomTextBtn(
                      onPressed: () {},
                      title: "Sign up",
                      textStyle:
                          AppFonts.s12w700.copyWith(color: AppColors.black),
                    ),
                    CustomTextBtn(
                      onPressed: () {},
                      title: "Forgot password?",
                      textStyle: AppFonts.s13w500
                          .copyWith(color: AppColors.lightBlack),
                    )
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
