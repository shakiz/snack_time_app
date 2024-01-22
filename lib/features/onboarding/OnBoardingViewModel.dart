import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:snack_time/common_widgets/OnBoardingItem.dart';
import 'package:snack_time/routes/AppRoutes.dart';

import '../../gen/assets.gen.dart';

class OnBoardingViewModel extends ChangeNotifier {
  int currentPage = 0;
  final PageController pageController = PageController();

  List<Widget> getOnBoardingItems() {
    List<Widget> widgets = [];
    widgets.add(OnBoardingItem(
        title: "Hello!",
        subTitle: "Let's cook!",
        asset: Assets.images.onboarding1));
    widgets.add(OnBoardingItem(
        title: "Create!",
        subTitle: "Your own Recipes",
        asset: Assets.images.onboarding2));
    widgets.add(OnBoardingItem(
        title: "Challenge!",
        subTitle: "Win and get Gifts",
        asset: Assets.images.onboarding3));
    return widgets;
  }

  void setPage(int pageNo) {
    currentPage = pageNo;
    notifyListeners();
  }

  void nextPage() {
    if (currentPage < getOnBoardingItems().length - 1) {
      currentPage++;
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
      notifyListeners();
    } else if (currentPage == 2) {
      Get.offNamed(AppRoutes.APP_ROUTE_MAIN);
    }
  }

  String getActionText() {
    if (currentPage == 0) {
      return "Let's Go";
    } else {
      return "Next";
    }
  }
}