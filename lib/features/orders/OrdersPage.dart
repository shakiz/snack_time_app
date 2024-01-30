import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../common_widgets/OrderHistoryItem.dart';
import '../../constants/ConstantValues.dart';
import '../../styles/AppColors.dart';
import 'OrdersViewModel.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder:
        (BuildContext context, OrdersViewModel ordersViewModel, Widget? child) {
      return SafeArea(
          child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(ConstantValues.Padding_16),
          children: [
            const Text(
              "My Orders",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: "Roboto",
                  decoration: TextDecoration.none,
                  color: AppColors.colorOnPrimaryBg,
                  fontSize: ConstantValues.Font_Size_20),
            ),
            const SizedBox(
              height: ConstantValues.Margin_16,
            ),
            SizedBox(
              height: 42,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: ordersViewModel.orderCategoryList.length,
                  itemExtent: MediaQuery.of(context).size.width / 3.4,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width / 3,
                      margin: const EdgeInsets.only(
                          right: ConstantValues.Margin_16),
                      padding: const EdgeInsets.all(ConstantValues.Padding_8),
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                              Radius.circular(ConstantValues.Radius_8)),
                          border: Border.all(
                              color: AppColors.colorBorderDivider, width: 2)),
                      child: Text(
                        ordersViewModel.orderCategoryList[index].categoryTitle,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            fontFamily: "Roboto",
                            decoration: TextDecoration.none,
                            color: AppColors.colorOnPrimaryBg,
                            fontSize: ConstantValues.Font_Size_16),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: ConstantValues.Margin_16,
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: ordersViewModel.orderHistoryList.length,
              itemBuilder: (context, index) {
                return OrderHistoryItem(
                    orderHistory: ordersViewModel.orderHistoryList[index]);
              },
            ),
            const SizedBox(
              height: ConstantValues.Margin_24,
            ),
          ],
        ),
      ));
    });
  }
}
