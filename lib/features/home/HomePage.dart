import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:snack_time/common_widgets/BottomNavItem.dart';
import 'package:snack_time/common_widgets/CommonSnackItem.dart';
import 'package:snack_time/common_widgets/CommonSnackItemSmall.dart';
import 'package:snack_time/common_widgets/DietItem.dart';
import 'package:snack_time/common_widgets/Extensions.dart';
import 'package:snack_time/constants/ConstantValues.dart';
import 'package:snack_time/features/home/HomeViewModel.dart';
import 'package:snack_time/gen/assets.gen.dart';
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
                  BottomNavItem(
                      title: "Profile",
                      iconUrl: Assets.icons.icProfile,
                      isSelected: false),
                ],
              ),
            ).withPadding(ConstantValues.Padding_8).withMarginSeparate(
                ConstantValues.Margin_24,
                ConstantValues.Margin_24,
                ConstantValues.Margin_16,
                ConstantValues.Margin_24),
            body: ListView(
              children: <Widget>[
                const SizedBox(
                  height: ConstantValues.Margin_16,
                ),
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
                CommonSnackItem(
                  snackItem: homeVIewModel.getNewAddedItem().first,
                  itemWidth: MediaQuery.of(context).size.width,
                  bannerHeight: MediaQuery.of(context).size.height / 5,
                ),
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
                                    Radius.circular(ConstantValues.Radius_42)),
                                child: Image(
                                  image: AssetImage(homeVIewModel
                                      .getUserStory()[index]
                                      .userAvatarUrl),
                                )),
                          )
                              .withPadding(ConstantValues.Padding_2)
                              .withMarginSeparate(
                              0, ConstantValues.Margin_16, 0, 0);
                        }),
                  ),
                ),
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
                        "New Snack",
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
                Padding(
                  padding:
                  const EdgeInsets.only(right: ConstantValues.Padding_16),
                  child: SizedBox(
                    height: 340,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemExtent: MediaQuery.of(context).size.width / 1.8,
                        itemCount: homeVIewModel.getNewAddedItem().length,
                        itemBuilder: (context, index) {
                          return CommonSnackItemSmall(
                            snackItem: homeVIewModel.getNewAddedItem()[index],
                            itemWidth: MediaQuery.of(context).size.width / 1.8,
                          );
                        }),
                  ),
                ),
                const SizedBox(
                  height: ConstantValues.Margin_8,
                ),
                CarouselSlider.builder(
                  itemCount: homeVIewModel.getNewAddedItem().length,
                  options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: false,
                      onPageChanged: (index, reason) {
                        homeVIewModel.animateToNextPage(index);
                      }),
                  itemBuilder:
                      (BuildContext context, int index, int realIndex) {
                    return CommonSnackItem(
                      snackItem: homeVIewModel.getNewAddedItem()[index],
                      itemWidth: MediaQuery.of(context).size.width,
                      bannerHeight: 90,
                    );
                  },
                ),
                DotsIndicator(
                  position: homeVIewModel.currentPage,
                  dotsCount: homeVIewModel.getNewAddedItem().length,
                  decorator: const DotsDecorator(
                    size: Size.square(12.0),
                    activeSize: Size(24.0, 12.0),
                    color: AppColors.colorSurface_1_5,
                    activeColor: AppColors.colorPrimary,
                    spacing: EdgeInsets.all(3.0),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(ConstantValues.Radius_8)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: ConstantValues.Margin_16,
                ),
                DietItem(
                    snackItem: homeVIewModel.getNewDietItem(),
                    itemWidth: MediaQuery.of(context).size.width),
                const SizedBox(
                  height: ConstantValues.Margin_16,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
