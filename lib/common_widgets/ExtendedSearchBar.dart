import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pathao_app/common_widgets/Extensions.dart';
import 'package:pathao_app/constants/ConstantValues.dart';
import 'package:pathao_app/styles/AppColors.dart';

import '../gen/assets.gen.dart';

class ExtendedSearchBar extends StatefulWidget {
  const ExtendedSearchBar({super.key});

  @override
  State<ExtendedSearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<ExtendedSearchBar> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(0, 1), // changes position of shadow
              )
            ],
            color: AppColors.colorBorderDivider,
            borderRadius: const BorderRadius.all(
                Radius.circular(ConstantValues.Radius_16))),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search...',
              suffixIconConstraints: const BoxConstraints(
                minHeight: ConstantValues.Icon_Size_20,
                minWidth: ConstantValues.Icon_Size_20,
              ),
              prefixIconConstraints: const BoxConstraints(
                minHeight: ConstantValues.Icon_Size_20,
                minWidth: ConstantValues.Icon_Size_20,
              ),
              prefixIcon: SvgPicture.asset(Assets.icons.icSearch),
              suffixIcon: SvgPicture.asset(Assets.icons.icVoice)),
        ),
      ).withPaddingSeparate(
          ConstantValues.Padding_16, ConstantValues.Padding_16, 0, 0),
      trailing: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(0, 1), // changes position of shadow
              )
            ],
            color: AppColors.colorBorderDivider,
            borderRadius: const BorderRadius.all(
                Radius.circular(ConstantValues.Radius_16))),
        child: SvgPicture.asset(Assets.icons.icFilter),
      ).withPadding(ConstantValues.Padding_16),
    );
  }
}
