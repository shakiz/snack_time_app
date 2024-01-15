import 'package:flutter/cupertino.dart';
import 'package:pathao_app/data/model/SnackItem.dart';

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
}
