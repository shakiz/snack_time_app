import 'package:flutter/material.dart';
import 'package:snack_time/common_widgets/Extensions.dart';
import 'package:snack_time/features/MainViewModel.dart';
import 'package:provider/provider.dart';
import 'package:snack_time/gen/assets.gen.dart';

import '../common_widgets/BottomNavItem.dart';
import '../constants/ConstantValues.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MainViewModel>(
      builder:
          (BuildContext context, MainViewModel mainViewModel, Widget? child) {
        print(mainViewModel.bottomNavSelectedIndex);
        return SafeArea(
          child: Scaffold(
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                      Radius.circular(ConstantValues.Radius_20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: const Offset(0, 1),
                    )
                  ]),
              child: SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                        onTap: () {
                          mainViewModel.changeBottomNavTab(0);
                        },
                        child: BottomNavItem(
                          title: "Home",
                          isSelected: mainViewModel.bottomNavSelectedIndex == 0,
                          iconUrl: Assets.icons.icHome,
                        )),
                    GestureDetector(
                      onTap: () {
                        mainViewModel.changeBottomNavTab(1);
                      },
                      child: BottomNavItem(
                        title: "Offers",
                        isSelected: mainViewModel.bottomNavSelectedIndex == 1,
                        iconUrl: Assets.icons.icCampaign,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        mainViewModel.changeBottomNavTab(2);
                      },
                      child: BottomNavItem(
                        title: "Orders",
                        isSelected: mainViewModel.bottomNavSelectedIndex == 2,
                        iconUrl: Assets.icons.icHistory,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        mainViewModel.changeBottomNavTab(3);
                      },
                      child: BottomNavItem(
                        title: "Profile",
                        isSelected: mainViewModel.bottomNavSelectedIndex == 3,
                        iconUrl: Assets.icons.icProfile,
                      ),
                    ),
                  ],
                ),
              ),
            ).withPadding(ConstantValues.Padding_8).withMarginSeparate(
                ConstantValues.Margin_16,
                ConstantValues.Margin_24,
                ConstantValues.Margin_16,
                ConstantValues.Margin_16),
            body: PageView(
              controller: mainViewModel.pageController,
              children: mainViewModel.appPages,
            ),
          ),
        );
      },
    );
  }
}
