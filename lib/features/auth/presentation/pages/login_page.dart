import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/core/config/routes/app_router.gr.dart';
import 'package:travel_app/core/config/themes/app_colors.dart';
import 'package:travel_app/core/config/themes/app_fonts.dart';
import 'package:travel_app/features/auth/presentation/cubit/sign_in/sign_in_cubit.dart';
import 'package:travel_app/features/auth/presentation/cubit/sign_in/sign_in_state.dart';
import 'package:travel_app/features/widgets/custom_elevated_btn.dart';
import 'package:travel_app/features/widgets/custom_text_btn.dart';
import 'package:travel_app/features/widgets/custom_text_field.dart';



@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController email = TextEditingController();
    final TextEditingController password = TextEditingController();

    
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
                            context.router.push(const DashboardRoute());

                            
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
                          context.router.push(const RegisterRoute());
                        },
                        title: "Sign up",
                        textStyle:
                            AppFonts.s12w700.copyWith(color: AppColors.black),
                      ),
                      CustomTextBtn(
                        onPressed: () {
                          context.router.push(const ResetPassRoute());
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
