import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:snack_time/common_widgets/Extensions.dart';
import 'package:snack_time/features/MainViewModel.dart';
import 'package:provider/provider.dart';
import 'package:snack_time/gen/assets.gen.dart';
import '../constants/ConstantValues.dart';
import '../styles/AppColors.dart';

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
                        child: bottomNavItem(
                          "Home",
                          mainViewModel.bottomNavSelectedIndex == 0,
                          Assets.icons.icHome,
                        )),
                    GestureDetector(
                      onTap: () {
                        mainViewModel.changeBottomNavTab(1);
                      },
                      child: bottomNavItem(
                        "Offers",
                        mainViewModel.bottomNavSelectedIndex == 1,
                        Assets.icons.icCampaign,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        mainViewModel.changeBottomNavTab(2);
                      },
                      child: bottomNavItem(
                        "Orders",
                        mainViewModel.bottomNavSelectedIndex == 2,
                        Assets.icons.icHistory,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        mainViewModel.changeBottomNavTab(3);
                      },
                      child: bottomNavItem(
                        "Profile",
                        mainViewModel.bottomNavSelectedIndex == 3,
                        Assets.icons.icProfile,
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
              onPageChanged: (index) {
                //mainViewModel.changeBottomNavTab(index);
              },
            ),
          ),
        );
      },
    );
  }

  Widget bottomNavItem(String title, bool isSelected, String iconUrl) {
    return Container(
      decoration: isSelected
          ? BoxDecoration(
              color: AppColors.colorPrimary.withOpacity(0.3),
              borderRadius: const BorderRadius.all(
                  Radius.circular(ConstantValues.Radius_16)))
          : const BoxDecoration(),
      child: Row(children: [
        SizedBox(
          width: 20,
          height: 20,
          child: SvgPicture.asset(iconUrl),
        ),
        const SizedBox(
          width: ConstantValues.Margin_4,
        ),
        Text(title)
      ]),
    ).withPadding(ConstantValues.Padding_8);
  }
}
