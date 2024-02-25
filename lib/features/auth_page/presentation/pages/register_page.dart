import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_app/core/config/themes/app_colors.dart';
import 'package:travel_app/core/config/themes/app_fonts.dart';
import 'package:travel_app/core/utils/consts/consts.dart';
import 'package:travel_app/features/auth_page/presentation/cubit/sign_up/cubit/sign_up_cubit.dart';
import 'package:travel_app/features/auth_page/presentation/pages/login_page.dart';
import 'package:travel_app/features/auth_page/presentation/pages/reset_pass_page.dart';
import 'package:travel_app/features/widgets/back_btn.dart';
import 'package:travel_app/features/widgets/custom_bottomnav.dart';
import 'package:travel_app/features/widgets/custom_elevated_btn.dart';
import 'package:travel_app/features/widgets/custom_text_btn.dart';
import 'package:travel_app/features/widgets/custom_text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  void routing() {
    if (firstName.text.isNotEmpty &&
        lastName.text.isNotEmpty &&
        password.text.isNotEmpty &&
        confirmPassword.text.isNotEmpty) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const CustomBottomNavBar()));
    }
  }

  @override
  void dispose() {
    super.dispose();
    firstName.dispose();
    lastName.dispose();
    email.dispose();
    password.dispose();
    confirmPassword.dispose();
  }

  final MaterialPageRoute resetRoute =
      MaterialPageRoute(builder: (context) => const ResetPassPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 290,
                height: 573,
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
                          ),
                        ],
                      ),
                      const Text(
                        "Login",
                        style: AppFonts.s18w700,
                      ),
                      BlocListener<SignUpCubit, SignUpState>(
                        listener: (context, state) {
                          if (state is SignUpLoading) {
                            debugPrint(state.toString());
                          } else if (state is SignUpSuccess) {
                            debugPrint(state.toString());
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CustomBottomNavBar()));
                          } else if (state is SignUpError) {
                            debugPrint(state.toString());
                          }
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "First name*",
                              style: AppFonts.s12w700
                                  .copyWith(color: AppColors.mediumGrey),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            CustomTextField(
                              controller: firstName,
                              keyboardType: TextInputType.name,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Last name*",
                              style: AppFonts.s12w700
                                  .copyWith(color: AppColors.mediumGrey),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            CustomTextField(
                                controller: lastName,
                                keyboardType: TextInputType.name),
                            const SizedBox(
                              height: 10,
                            ),
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
                            Text(
                              "Confirm password*",
                              style: AppFonts.s12w700
                                  .copyWith(color: AppColors.mediumGrey),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            CustomTextField(
                              controller: confirmPassword,
                              obscureText: true,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: CustomElevatedBtn(
                                onPressed: password.text != confirmPassword.text
                                    ? null
                                    : () async {
                                        BlocProvider.of<SignUpCubit>(context)
                                            .signUp(
                                                email: email.text,
                                                password: password.text);
                                        final SharedPreferences prefs =
                                            await SharedPreferences
                                                .getInstance();
                                        await prefs.setString(
                                            Consts.firstName, firstName.text);
                                        await prefs.setString(
                                            Consts.lastName, lastName.text);
                                        await prefs.setString(
                                            Consts.email, email.text);
                                        await prefs.setString(
                                            Consts.password, firstName.text);
                                        await prefs.setBool(Consts.isLogined, true);
                                      },
                                title: "Sign up",
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomTextBtn(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        },
                        title: "Login",
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
