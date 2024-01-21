import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/ConstantValues.dart';
import '../styles/AppColors.dart';

class ShortcutWidget extends StatefulWidget {
  String asset, title;

  ShortcutWidget({super.key, required this.asset, required this.title});

  @override
  State<ShortcutWidget> createState() => _ShortcutWidgetState(asset, title);
}

class _ShortcutWidgetState extends State<ShortcutWidget> {
  String asset, title;

  _ShortcutWidgetState(this.asset, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 112,
      height: 112,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(ConstantValues.Padding_16),
      decoration: BoxDecoration(
          color: AppColors.colorSurface_5,
          borderRadius: const BorderRadius.all(
            Radius.circular(ConstantValues.Radius_16),
          ),
          border: Border.all(
              color: AppColors.colorOnPrimaryBg.withOpacity(0.1), width: 1),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 1), // changes position of shadow
            )
          ]),
      child: Column(
        children: [
          SvgPicture.asset(
            asset,
            height: 48,
            width: 48,
          ),
          Text(
            title,
            style: const TextStyle(
                color: AppColors.colorOnPrimaryBg,
                fontSize: ConstantValues.Font_Size_16,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
