import 'package:flutter/material.dart';
import 'package:travel_app/utils/consts/themes/app_colors.dart';
import 'package:travel_app/utils/consts/themes/app_fonts.dart';
import 'package:travel_app/presentation/widgets/back_btn.dart';
import 'package:travel_app/presentation/widgets/custom_elevated_btn.dart';
import 'package:travel_app/presentation/widgets/custom_text_field.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
                        BackBtn(
                          onPressed: () {},
                        )
                      ],
                    ),
                    const Text(
                      "Password Reset",
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
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 40),
                        child: Text(
                            """Forgotten your password?\nEnter your e-mail address below, and we'll send you\nan e-mail allowing you to\nreset it.""", style: AppFonts.s12w500,),
                      ),
                    ),
                    const SizedBox(
                      height: 19,
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
                      title: "Reset my password",
                      width: 172,
                      height: 33,
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
