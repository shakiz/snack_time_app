import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:snack_time/routes/AppRoutes.dart';

class SplashViewModel extends ChangeNotifier {
  void moveToOnBoarding() {
    Timer(const Duration(seconds: 4), () {
      Get.offNamed(AppRoutes.APP_ROUTE_ONBOARDING);
    });
  }
}
