import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
        body: Container(),
      ));
    });
  }
}
