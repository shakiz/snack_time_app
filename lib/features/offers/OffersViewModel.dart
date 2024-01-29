import 'package:flutter/cupertino.dart';

import '../../data/model/Offers.dart';
import '../../gen/assets.gen.dart';

class OffersViewModel extends ChangeNotifier {
  List<Offers> offers = [
    Offers("10-40% OFF", "Flat Discounts on Every Purchase!",
        Assets.images.icMcdonalds.path, "4.5", "Food", "15 Days"),
    Offers("40-60% OFF", "For First Time Users",
        Assets.images.icBurgerKing.path, "4.2", "Fast Food", "9 Days"),
    Offers("40% Cashback", "For Repeat Orders", Assets.images.icKfc.path, "4.6",
        "Culinary", "4 Days"),
    Offers("Get 10Tk Cashback", "New Users Only",
        Assets.images.icCheeseSlice.path, "4.8", "New Customer", "20 Days")
  ];
}
