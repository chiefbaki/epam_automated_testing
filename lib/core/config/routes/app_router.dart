import 'package:auto_route/auto_route.dart';
import 'package:travel_app/core/config/routes/app_router.gr.dart';


@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [

    // Splash
    AutoRoute(page: SplashRoute.page, initial: true),

    // Auth
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: RegisterRoute.page),
    AutoRoute(page: ChangePassRoute.page),
    AutoRoute(page: PassSuccessRoute.page),
    AutoRoute(page: ResetPassRoute.page),
    
        AutoRoute(
          page: DashboardRoute.page,

          
          children: [
            AutoRoute(
              page: HomeRoute.page,
              initial: true,
            ),
            AutoRoute(
              page: ShoppingRoute.page,
              
            ),
            AutoRoute(
              page: FavouriteRoute.page,
            ),
            AutoRoute(
              page: LocationRoute.page,
            ),
          ],
        ),
        
      ];
}
