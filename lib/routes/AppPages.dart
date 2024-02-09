import 'package:get/get.dart';
import 'package:snack_time/features/MainPage.dart';
import 'package:snack_time/features/splash/SplashPage.dart';
import 'package:snack_time/features/details/SnackItemDetails.dart';
import 'package:snack_time/features/home/HomePage.dart';
import 'package:snack_time/features/onboarding/OnBoardingPage.dart';
import 'package:snack_time/features/profile/ProfilePage.dart';
import 'package:snack_time/routes/AppRoutes.dart';

class AppPages {
  static const INITIAL_ROUTE = AppRoutes.APP_ROUTE_SPLASH;

  static final routes = [
    GetPage(
        name: AppRoutes.APP_ROUTE_SPLASH,
        page: () => const SplashPage(),
        transition: Transition.fade),
    GetPage(
        name: AppRoutes.APP_ROUTE_ONBOARDING,
        page: () => const OnBoardingPage(),
        transition: Transition.fade),
    GetPage(
        name: AppRoutes.APP_ROUTE_MAIN,
        page: () => const MainPage(),
        transition: Transition.leftToRight,
        transitionDuration: Duration(microseconds: 2000)),
    GetPage(name: AppRoutes.APP_ROUTE_HOME, page: () => const HomePage()),
    GetPage(
        name: AppRoutes.APP_ROUTE_ITEM_DETAILS,
        page: () => const SnackItemDetails()),
    GetPage(name: AppRoutes.APP_ROUTE_PROFILE, page: () => const ProfilePage())
  ];
}
