// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:travel_app/features/favourite/presentation/page/favourite_page.dart'
    as _i2;
import 'package:travel_app/features/home/presentation/pages/home_page.dart'
    as _i3;
import 'package:travel_app/features/location/presentation/page/location_page.dart'
    as _i4;
import 'package:travel_app/features/shopping/presentation/pages/category_page.dart'
    as _i6;
import 'package:travel_app/features/widgets/custom_bottomnav.dart' as _i1;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    CustomBottomNavBar.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CustomBottomNavBar(),
      );
    },
    FavouriteRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.FavouritePage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    LocationRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LocationPage(),
      );
    },
    ShoppingRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ShoppingPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CustomBottomNavBar]
class CustomBottomNavBar extends _i7.PageRouteInfo<void> {
  const CustomBottomNavBar({List<_i7.PageRouteInfo>? children})
      : super(
          CustomBottomNavBar.name,
          initialChildren: children,
        );

  static const String name = 'CustomBottomNavBar';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.FavouritePage]
class FavouriteRoute extends _i7.PageRouteInfo<void> {
  const FavouriteRoute({List<_i7.PageRouteInfo>? children})
      : super(
          FavouriteRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavouriteRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LocationPage]
class LocationRoute extends _i7.PageRouteInfo<void> {
  const LocationRoute({List<_i7.PageRouteInfo>? children})
      : super(
          LocationRoute.name,
          initialChildren: children,
        );

  static const String name = 'LocationRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ShoppingPage]
class ShoppingRoute extends _i7.PageRouteInfo<void> {
  const ShoppingRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ShoppingRoute.name,
          initialChildren: children,
        );

  static const String name = 'ShoppingRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
