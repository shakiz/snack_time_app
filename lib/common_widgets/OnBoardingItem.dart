import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pathao_app/gen/assets.gen.dart';

import '../constants/ConstantValues.dart';
import '../styles/AppColors.dart';

class OnBoardingItem extends StatefulWidget {
  const OnBoardingItem({super.key});

  @override
  State<OnBoardingItem> createState() => _OnBoardingItemState();
}

class _OnBoardingItemState extends State<OnBoardingItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Hello!",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
              color: AppColors.colorOnPrimaryBg,
              fontSize: ConstantValues.Font_Size_48),
        ),
        const Text(
          "Let's cook!",
          style: TextStyle(
              fontWeight: FontWeight.normal,
              decoration: TextDecoration.none,
              color: AppColors.colorOnPrimaryBg,
              fontSize: ConstantValues.Font_Size_20),
        ),
        SizedBox(child: SvgPicture.asset(Assets.images.onboarding1,)),
      ],
    );
  }
}
