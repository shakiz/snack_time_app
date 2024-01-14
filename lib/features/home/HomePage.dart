import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pathao_app/common_widgets/BottomNavItem.dart';
import 'package:pathao_app/common_widgets/Extensions.dart';
import 'package:pathao_app/constants/ConstantValues.dart';
import 'package:pathao_app/gen/assets.gen.dart';

import '../../common_widgets/ExtendedSearchBar.dart';
import '../../styles/AppColors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Stack(
            children: <Widget>[
              Positioned(left: 0, right: 0, top: 0, child: ExtendedSearchBar()),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                          Radius.circular(ConstantValues.Radius_20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset:
                              const Offset(0, 2), // changes position of shadow
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BottomNavItem(
                          title: "Offers",
                          iconUrl: Assets.icons.icCampaign,
                          isSelected: false),
                      BottomNavItem(
                          title: "Home",
                          iconUrl: Assets.icons.icHome,
                          isSelected: true),
                      BottomNavItem(
                          title: "Orders",
                          iconUrl: Assets.icons.icHistory,
                          isSelected: false),
                    ],
                  ),
                ).withPadding(ConstantValues.Padding_8).withMarginSeparate(
                    ConstantValues.Margin_24,
                    ConstantValues.Margin_24,
                    ConstantValues.Margin_16,
                    ConstantValues.Margin_24),
              )
            ],
          ),
        ),
      ),
    );
  }
}
