import 'package:flutter/material.dart';
import 'package:pathao_app/common_widgets/BottomNavItem.dart';
import 'package:pathao_app/common_widgets/Extensions.dart';
import 'package:pathao_app/constants/ConstantValues.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                      Radius.circular(ConstantValues.Radius_20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(0, 2), // changes position of shadow
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomNavItem(title: "Offers", iconUrl: "iconUrl"),
                  BottomNavItem(title: "Home", iconUrl: "iconUrl"),
                  BottomNavItem(title: "History", iconUrl: "iconUrl"),
                ],
              ),
            )
                .withPadding(ConstantValues.Padding_16)
                .withMarginSeparate(ConstantValues.Margin_20, ConstantValues.Margin_20, ConstantValues.Margin_16, ConstantValues.Margin_24)
          ],
        ),
      ),
    );
  }
}
