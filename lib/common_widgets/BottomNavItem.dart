import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pathao_app/common_widgets/Extensions.dart';
import 'package:pathao_app/constants/ConstantValues.dart';
import 'package:pathao_app/styles/AppColors.dart';

class BottomNavItem extends StatefulWidget {
  String title, iconUrl;
  bool isSelected;

  BottomNavItem({super.key, required this.title, required this.iconUrl, required this.isSelected});

  @override
  State<BottomNavItem> createState() => _BottomNavItemState(title, iconUrl, isSelected);
}

class _BottomNavItemState extends State<BottomNavItem> {
  String title, iconUrl;
  bool isSelected;

  _BottomNavItemState(this.title, this.iconUrl, this.isSelected);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: isSelected ? BoxDecoration(
            color: AppColors.colorPrimary.withOpacity(0.3),
                borderRadius: const BorderRadius.all(
                    Radius.circular(ConstantValues.Radius_16))) : const BoxDecoration(),
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
      ).withPadding(ConstantValues.Padding_8),
    );
  }
}
