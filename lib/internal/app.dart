import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/core/config/routes/app_router.dart';
import 'package:travel_app/core/config/themes/app_colors.dart';
import 'package:travel_app/features/auth/data/repositories/firebase_services.dart';
import 'package:travel_app/features/auth/presentation/cubit/reset_pass/reset_pass_cubit.dart';
import 'package:travel_app/features/auth/presentation/cubit/sign_in/sign_in_cubit.dart';
import 'package:travel_app/features/auth/presentation/cubit/sign_up/cubit/sign_up_cubit.dart';
import 'package:travel_app/features/favourite/presentation/provider/favorite_provider.dart';
import 'package:travel_app/features/shopping/presentation/provider/favourite_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => FirebaseServise(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => SignInCubit(
                firebase: RepositoryProvider.of<FirebaseServise>(context)),
          ),
          BlocProvider(
            create: (context) => SignUpCubit(
                firebaseServise:
                    RepositoryProvider.of<FirebaseServise>(context)),
          ),
          BlocProvider(
            create: (context) => ResetPassCubit(
                firebaseServise:
                    RepositoryProvider.of<FirebaseServise>(context)),
          ),
        ],
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => ShoppingProvider()),
            ChangeNotifierProvider(create: (context) => FavouriteProvider()),
          ],
          child: MaterialApp.router(
            routerConfig: AppRouter().config(),
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              useMaterial3: false,
              fontFamily: "SF-Pro-Display",
              scaffoldBackgroundColor: AppColors.scaffoldBgColor,
              appBarTheme: const AppBarTheme(color: AppColors.scaffoldBgColor),
            ),
            // home: const CustomBottomNavBar(title: "Home",),
          ),
        ),
      ),
    );
  }
}
