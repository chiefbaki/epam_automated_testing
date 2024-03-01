import 'package:auto_route/auto_route.dart';
import 'package:travel_app/core/config/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: CustomBottomNavBar.page,
          initial: true,
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
