import 'package:flutter/material.dart';
import 'package:pathao_app/common_widgets/BottomNavItem.dart';
import 'package:pathao_app/common_widgets/CommonSnackItem.dart';
import 'package:pathao_app/common_widgets/Extensions.dart';
import 'package:pathao_app/constants/ConstantValues.dart';
import 'package:pathao_app/features/home/HomeViewModel.dart';
import 'package:pathao_app/gen/assets.gen.dart';
import 'package:provider/provider.dart';

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
    return Consumer<HomeVIewModel>(
      builder:
          (BuildContext context, HomeVIewModel homeVIewModel, Widget? child) {
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
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const ExtendedSearchBar(),
                  const SizedBox(
                    height: ConstantValues.Margin_16,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: ConstantValues.Padding_16,
                        right: ConstantValues.Padding_16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "New Snack from Chef",
                          style: TextStyle(
                              color: AppColors.colorOnPrimaryBg,
                              fontSize: ConstantValues.Font_Size_16,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "SEE ALL",
                          style: TextStyle(
                              color: AppColors.colorOnPrimaryBg,
                              fontSize: ConstantValues.Font_Size_16),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: ConstantValues.Margin_8,
                  ),
                  CommonSnackItem(snackItem: homeVIewModel.getNewAddedItem()),
                  const SizedBox(
                    height: ConstantValues.Margin_20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: ConstantValues.Padding_16,
                        right: ConstantValues.Padding_16),
                    child: SizedBox(
                      height: 84,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: homeVIewModel.getUserStory().length,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(ConstantValues.Radius_42)),
                                color: AppColors.colorPrimary,
                              ),
                              child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(
                                          ConstantValues.Radius_42)),
                                  child: Image(
                                    image: AssetImage(homeVIewModel
                                        .getUserStory()[index]
                                        .userAvatarUrl),
                                  )),
                            )
                                .withPadding(ConstantValues.Padding_4)
                                .withMarginSeparate(
                                    0, ConstantValues.Margin_16, 0, 0);
                          }),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
