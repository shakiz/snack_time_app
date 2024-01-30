import 'package:flutter/cupertino.dart';

import '../../data/model/OrderHistory.dart';
import '../../data/model/OrderHistoryCategory.dart';

class OrdersViewModel extends ChangeNotifier {
  List<OrderHistoryCategory> orderCategoryList = [
    OrderHistoryCategory("Processing"),
    OrderHistoryCategory("Shipped"),
    OrderHistoryCategory("Returned"),
    OrderHistoryCategory("Cancelled"),
  ];

  List<OrderHistory> orderHistoryList = [
    OrderHistory(
        "Indonesian Beans", "Beans - 50gm", "", "#OC2345", 85, 3, "Shipped"),
    OrderHistory(
        "Coffee Beans", "Beans - 50gm", "", "#OC2345", 85, 3, "Shipped"),
    OrderHistory("Hot Sauce", "Beans - 50gm", "", "#OC2345", 85, 3, "Shipped"),
    OrderHistory(
        "Chicken Noodles", "Beans - 50gm", "", "#OC2345", 85, 3, "Shipped"),
  ];
}
