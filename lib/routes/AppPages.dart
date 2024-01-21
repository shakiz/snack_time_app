import 'package:get/get.dart';
import 'package:pathao_app/features/details/SnackItemDetails.dart';
import 'package:pathao_app/features/home/HomePage.dart';
import 'package:pathao_app/features/onboarding/OnBoardingPage.dart';
import 'package:pathao_app/routes/AppRoutes.dart';

class AppPages {
  static const INITIAL_ROUTE = AppRoutes.APP_ROUTE_ONBOARDING;

  static final routes = [
    GetPage(name: AppRoutes.APP_ROUTE_ONBOARDING, page: () => OnBoardingPage()),
    GetPage(name: AppRoutes.APP_ROUTE_HOME, page: () => HomePage()),
    GetPage(
        name: AppRoutes.APP_ROUTE_ITEM_DETAILS, page: () => SnackItemDetails()),
  ];
}
