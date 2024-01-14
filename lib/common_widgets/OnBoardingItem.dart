import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/ConstantValues.dart';
import '../styles/AppColors.dart';

class OnBoardingItem extends StatefulWidget {
  String title, subTitle, asset;

  OnBoardingItem(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.asset});

  @override
  State<OnBoardingItem> createState() =>
      _OnBoardingItemState(title, subTitle, asset);
}

class _OnBoardingItemState extends State<OnBoardingItem> {
  String title, subTitle, asset;

  _OnBoardingItemState(this.title, this.subTitle, this.asset);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
                fontFamily: "Roboto",
                color: AppColors.colorOnPrimaryBg,
                fontSize: ConstantValues.Font_Size_48),
          ),
          Text(
            subTitle,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Roboto",
                decoration: TextDecoration.none,
                color: AppColors.colorOnPrimaryBg,
                fontSize: ConstantValues.Font_Size_20),
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height - 190,
              width: MediaQuery.of(context).size.width,
              child: SvgPicture.asset(
                asset,
                fit: BoxFit.cover,
              )),
        ],
      ),
    );
  }
}
