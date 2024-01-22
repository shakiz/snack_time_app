import 'package:get/get.dart';
import 'package:snack_time/features/details/SnackItemDetails.dart';
import 'package:snack_time/features/home/HomePage.dart';
import 'package:snack_time/features/onboarding/OnBoardingPage.dart';
import 'package:snack_time/routes/AppRoutes.dart';

class AppPages {
  static const INITIAL_ROUTE = AppRoutes.APP_ROUTE_ONBOARDING;

  static final routes = [
    GetPage(name: AppRoutes.APP_ROUTE_ONBOARDING, page: () => OnBoardingPage()),
    GetPage(name: AppRoutes.APP_ROUTE_HOME, page: () => HomePage()),
    GetPage(
        name: AppRoutes.APP_ROUTE_ITEM_DETAILS, page: () => SnackItemDetails()),
  ];
}
