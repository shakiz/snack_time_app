import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pathao_app/common_widgets/OnBoardingItem.dart';
import 'package:pathao_app/constants/ConstantValues.dart';
import 'package:pathao_app/styles/AppColors.dart';

import '../../gen/assets.gen.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: AppColors.colorPrimary,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.all(ConstantValues.Margin_24),
                alignment: Alignment.centerRight,
                child: Text(
                  "Skip".toUpperCase(),
                  style: const TextStyle(
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none,
                      color: AppColors.colorOnPrimaryBg,
                      fontSize: ConstantValues.Font_Size_20),
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                top: 64,
                child: SingleChildScrollView(
                  child: Column(
                    children: [OnBoardingItem()],
                  ),
                )),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                  alignment: Alignment.bottomCenter,
                  margin: const EdgeInsets.all(ConstantValues.Margin_16),
                  padding: const EdgeInsets.all(ConstantValues.Padding_12),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: AppColors.colorPrimary,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.colorPrimary.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 3,
                          offset:
                              const Offset(0, 2), // changes position of shadow
                        )
                      ],
                      borderRadius: const BorderRadius.all(
                          Radius.circular(ConstantValues.Radius_24))),
                  child: const Text(
                    "Let's Go",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: AppColors.colorOnPrimaryBg,
                        fontSize: ConstantValues.Font_Size_16),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
