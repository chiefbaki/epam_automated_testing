import 'package:flutter/material.dart';
import 'package:travel_app/core/consts/theme/app_colors.dart';
import 'package:travel_app/core/consts/theme/app_fonts.dart';
import 'package:travel_app/presentation/widgets/back_btn.dart';
import 'package:travel_app/presentation/widgets/custom_elevated_btn.dart';
import 'package:travel_app/presentation/widgets/custom_text_field.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

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
                padding: const EdgeInsets.only(right: 24.5, left: 24.5),
                child: Column(
                  children: [
                    Row(
                      children: [
                        BackBtn(onPressed: () {}),
                      ],
                    ),
                    const SizedBox(
                      height: 24.5,
                    ),
                    const Text(
                      "Change Password",
                      style: AppFonts.s18w700,
                    ),
                    const SizedBox(
                      height: 19,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Password*",
                          style: AppFonts.s12w700
                              .copyWith(color: AppColors.mediumGrey),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        CustomTextField(
                          controller: TextEditingController(),
                          keyboardType: TextInputType.number,
                          obscureText: true,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "New Password (again)*",
                          style: AppFonts.s12w700
                              .copyWith(color: AppColors.mediumGrey),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        CustomTextField(
                          controller: TextEditingController(),
                          obscureText: true,
                          keyboardType: TextInputType.number,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 19,
                    ),
                    CustomElevatedBtn(
                      onPressed: () {},
                      title: "Sign in",
                    ),
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
