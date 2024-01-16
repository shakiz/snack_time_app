import 'package:flutter/cupertino.dart';
import 'package:pathao_app/data/model/SnackItem.dart';

import '../../data/model/UserStory.dart';
import '../../gen/assets.gen.dart';

class HomeVIewModel extends ChangeNotifier {
  SnackItem getNewAddedItem() {
    List<String> tags = ["From Chef", "Challenge"];
    return SnackItem(
        "Salmon and baked vegetables — Fish Сhallenge",
        Assets.images.bannerNewSnackItem.path,
        true,
        false,
        tags,
        "20 min",
        "Joe Johnson",
        Assets.images.icDummyUser.path);
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
}
