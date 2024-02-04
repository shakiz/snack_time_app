import 'package:get/get.dart';
import 'package:snack_time/features/MainPage.dart';
import 'package:snack_time/features/details/SnackItemDetails.dart';
import 'package:snack_time/features/home/HomePage.dart';
import 'package:snack_time/features/onboarding/OnBoardingPage.dart';
import 'package:snack_time/features/profile/ProfilePage.dart';
import 'package:snack_time/routes/AppRoutes.dart';
import 'package:snack_time/utils/CustomPageTransition.dart';

class AppPages {
  static const INITIAL_ROUTE = AppRoutes.APP_ROUTE_ONBOARDING;

  static final routes = [
    GetPage(
        name: AppRoutes.APP_ROUTE_ONBOARDING,
        page: () => const OnBoardingPage(),
        transition: Transition.fade),
    GetPage(
        name: AppRoutes.APP_ROUTE_MAIN,
        page: () => const MainPage(),
        customTransition: CustomPageTransition(page: const MainPage())),
    GetPage(name: AppRoutes.APP_ROUTE_HOME, page: () => const HomePage()),
    GetPage(
        name: AppRoutes.APP_ROUTE_ITEM_DETAILS,
        page: () => const SnackItemDetails()),
    GetPage(name: AppRoutes.APP_ROUTE_PROFILE, page: () => const ProfilePage())
  ];
}
