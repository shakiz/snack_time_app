import 'package:flutter/cupertino.dart';
import 'package:snack_time/features/home/HomePage.dart';
import 'package:snack_time/features/offers/OffersPage.dart';
import 'package:snack_time/features/orders/OrdersPage.dart';
import 'package:snack_time/features/profile/ProfilePage.dart';

class MainViewModel extends ChangeNotifier {
  int bottomNavSelectedIndex = 0;
  final PageController pageController = PageController(initialPage: 0);

  final appPages = [
    const HomePage(),
    const OffersPage(),
    const OrdersPage(),
    const ProfilePage(),
  ];

  void changeBottomNavTab(int index) {
    pageController.jumpToPage(index);
    bottomNavSelectedIndex = index;
    notifyListeners();
  }
}
