import 'package:flutter/cupertino.dart';
import 'package:pathao_app/data/model/SnackItem.dart';

import '../../data/model/UserStory.dart';
import '../../gen/assets.gen.dart';

class HomeVIewModel extends ChangeNotifier {
  int currentPage = 0;
  final PageController pageController = PageController();

  List<SnackItem> getNewAddedItem() {
    List<String> tags = ["From Chef", "Challenge"];
    return [
      SnackItem(
          "Salmon and baked vegetables — Fish Сhallenge",
          Assets.images.bannerNewSnackItem.path,
          true,
          false,
          tags,
          "20 min",
          "Joe Johnson",
          Assets.images.icDummyUser.path),
      SnackItem(
          "Fried Bacon with Vegetables - Quick",
          Assets.images.bannerNewSnackItem1.path,
          true,
          false,
          ["Protein", "Health"],
          "10 min",
          "David Miller",
          Assets.images.icDummyUser1.path),
      SnackItem(
          "Double Decker beef Sandwich",
          Assets.images.bannerNewSnackItem2.path,
          false,
          true,
          ["Nutritious", "Health"],
          "5 min",
          "Jason Hermon",
          Assets.images.icDummyUser2.path)
    ];
  }

  List<UserStory> getUserStory() {
    List<UserStory> userStoryList = [
      UserStory(0, Assets.icons.icAddStory.path),
      UserStory(1, Assets.images.icStoryUser1.path),
      UserStory(2, Assets.images.icStoryUser2.path),
      UserStory(3, Assets.images.icStoryUser3.path),
    ];
    return userStoryList;
  }

  void nextPage(int currentPage) {
    this.currentPage = currentPage;
    if (currentPage < getNewAddedItem().length - 1) {
      currentPage++;
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
      notifyListeners();
    }
  }
}
