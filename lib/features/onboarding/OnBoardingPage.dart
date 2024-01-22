import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:snack_time/constants/ConstantValues.dart';
import 'package:snack_time/features/onboarding/OnBoardingViewModel.dart';
import 'package:snack_time/gen/assets.gen.dart';
import 'package:snack_time/routes/AppRoutes.dart';
import 'package:snack_time/styles/AppColors.dart';
import 'package:provider/provider.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: AppColors.colorPrimary));
    return Consumer<OnBoardingViewModel>(
      builder: (BuildContext context, OnBoardingViewModel onBoardingViewModel,
          Widget? child) {
        return SafeArea(
          child: Container(
            color: AppColors.colorPrimary,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {
                      Get.offNamed(AppRoutes.APP_ROUTE_MAIN);
                    },
                    child: Container(
                      margin: const EdgeInsets.all(ConstantValues.Margin_24),
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Skip".toUpperCase(),
                        style: const TextStyle(
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.normal,
                            decoration: TextDecoration.none,
                            color: AppColors.colorOnPrimaryBg,
                            fontSize: ConstantValues.Font_Size_20),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 48,
                  left: 0,
                  right: 0,
                  child: DotsIndicator(
                    position: onBoardingViewModel.currentPage,
                    dotsCount: onBoardingViewModel.getOnBoardingItems().length,
                    decorator: const DotsDecorator(
                      size: Size.square(12.0),
                      activeSize: Size(24.0, 12.0),
                      color: AppColors.colorSurface_1_5,
                      activeColor: AppColors.colorOnPrimary,
                      spacing: EdgeInsets.all(3.0),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(ConstantValues.Radius_8)),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    top: 72,
                    child: PageView.builder(
                      controller: onBoardingViewModel.pageController,
                      itemCount:
                      onBoardingViewModel.getOnBoardingItems().length,
                      itemBuilder: (context, index) {
                        return onBoardingViewModel.getOnBoardingItems()[index];
                      },
                      onPageChanged: (index) {
                        onBoardingViewModel.setPage(index);
                      },
                    )),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () {
                      onBoardingViewModel.nextPage();
                    },
                    child: Container(
                        alignment: Alignment.bottomCenter,
                        margin: const EdgeInsets.all(ConstantValues.Margin_16),
                        padding:
                        const EdgeInsets.all(ConstantValues.Padding_12),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: AppColors.colorPrimary,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.colorPrimary.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 3,
                                offset: const Offset(
                                    0, 2), // changes position of shadow
                              )
                            ],
                            borderRadius: const BorderRadius.all(
                                Radius.circular(ConstantValues.Radius_24))),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              onBoardingViewModel.getActionText(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Roboto",
                                  decoration: TextDecoration.none,
                                  color: AppColors.colorOnPrimaryBg,
                                  fontSize: ConstantValues.Font_Size_16),
                            ),
                            const SizedBox(
                              width: ConstantValues.Margin_4,
                            ),
                            SvgPicture.asset(
                              Assets.icons.icRightArrow,
                              width: ConstantValues.Icon_Size_20,
                              height: ConstantValues.Icon_Size_20,
                            )
                          ],
                        )),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
