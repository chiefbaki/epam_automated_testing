import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/core/config/themes/app_colors.dart';
import 'package:travel_app/core/config/themes/app_fonts.dart';
import 'package:travel_app/features/auth_page/presentation/cubit/reset_pass/reset_pass_cubit.dart';
import 'package:travel_app/features/auth_page/presentation/pages/login_page.dart';
import 'package:travel_app/features/widgets/back_btn.dart';
import 'package:travel_app/features/widgets/custom_bottomnav.dart';
import 'package:travel_app/features/widgets/custom_elevated_btn.dart';
import 'package:travel_app/features/widgets/custom_text_field.dart';

class ResetPassPage extends StatelessWidget {
  const ResetPassPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController email = TextEditingController();
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
                          onPressed: () {
                            Navigator.pop(context);
                          },
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
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 40),
                        child: Text(
                          """Forgotten your password?\nEnter your e-mail address below, and we'll send you\nan e-mail allowing you to\nreset it.""",
                          style: AppFonts.s12w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 19,
                    ),
                    BlocListener<ResetPassCubit, ResetPassState>(
                      listener: (context, state) {
                        if (state is ResetPassSuccess) {
                          debugPrint(state.toString());

                          Future.delayed(const Duration(seconds: 3), () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
                          });
                        } else if (state is ResetPassError) {
                          debugPrint(state.toString().toUpperCase());
                        }
                      },
                      child: Column(
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
                            controller: email,
                          ),
                          const SizedBox(
                            height: 19,
                          ),
                          Center(
                            child: CustomElevatedBtn(
                              onPressed: () {
                                BlocProvider.of<ResetPassCubit>(context)
                                    .reset(email: email.text);
                              },
                              title: "Reset my password",
                              width: 172,
                              height: 33,
                            ),
                          ),
                        ],
                      ),
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
