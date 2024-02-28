import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/core/config/themes/app_colors.dart';
import 'package:travel_app/core/config/themes/app_fonts.dart';
import 'package:travel_app/features/auth/presentation/cubit/sign_in/sign_in_cubit.dart';
import 'package:travel_app/features/auth/presentation/cubit/sign_in/sign_in_state.dart';
import 'package:travel_app/features/auth/presentation/pages/register_page.dart';
import 'package:travel_app/features/auth/presentation/pages/reset_pass_page.dart';
import 'package:travel_app/features/widgets/custom_bottomnav.dart';
import 'package:travel_app/features/widgets/custom_elevated_btn.dart';
import 'package:travel_app/features/widgets/custom_text_btn.dart';
import 'package:travel_app/features/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController email = TextEditingController();
    final TextEditingController password = TextEditingController();
    final MaterialPageRoute registerRoute =
        MaterialPageRoute(builder: (context) => const RegisterPage());
    final MaterialPageRoute homeRoute =
        MaterialPageRoute(builder: (context) => const CustomBottomNavBar());
    final MaterialPageRoute resetRoute =
        MaterialPageRoute(builder: (context) => const ResetPassPage());
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
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
                        "Login",
                        style: AppFonts.s18w700,
                      ),
                      BlocListener<SignInCubit, SignInState>(
                        listener: (context, state) {
                          if (state is SignInLoading) {
                            debugPrint(state.toString());
                          } else if (state is SignInSuccess) {
                            debugPrint(state.toString());
                            Navigator.push(context, homeRoute);
                          } else if (state is SignInError) {
                            debugPrint(state.toString());
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
                              keyboardType: TextInputType.emailAddress,
                            ),
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
                            CustomTextField(
                              controller: password,
                              obscureText: true,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: CustomElevatedBtn(
                                onPressed: () {
                                  BlocProvider.of<SignInCubit>(context).signIn(
                                      email: email.text,
                                      password: password.text);
                                },
                                title: "Sign in",
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomTextBtn(
                        onPressed: () {
                          Navigator.push(context, registerRoute);
                        },
                        title: "Sign up",
                        textStyle:
                            AppFonts.s12w700.copyWith(color: AppColors.black),
                      ),
                      CustomTextBtn(
                        onPressed: () {
                          Navigator.push(context, resetRoute);
                        },
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
      ),
    );
  }
}
