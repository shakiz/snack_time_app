import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:snack_time/common_widgets/Extensions.dart';
import 'package:snack_time/constants/ConstantValues.dart';
import 'package:snack_time/gen/assets.gen.dart';
import 'package:snack_time/styles/AppColors.dart';

import 'ProfileViewModel.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (BuildContext context,
        ProfileViewModel profileViewModel, Widget? child) {
      return SafeArea(
          child: Container(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  Assets.icons.icArrowLeft,
                  colorFilter: const ColorFilter.mode(
                    AppColors.colorOnPrimaryBg,
                    BlendMode.srcATop,
                  ),
                ),
                SvgPicture.asset(
                  Assets.icons.icSettings,
                  colorFilter: const ColorFilter.mode(
                    AppColors.colorOnPrimaryBg,
                    BlendMode.srcATop,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: ConstantValues.Margin_96,
            ),
            Container(
                height: 124,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                        Radius.circular(ConstantValues.Radius_100)),
                    border: Border.all(
                        color: AppColors.colorBorderDivider, width: 2)),
                child: Image(
                  image: AssetImage(Assets.images.userProfile.path),
                  height: 124,
                  fit: BoxFit.cover,
                )).withPadding(ConstantValues.Padding_16),
            const SizedBox(
              height: ConstantValues.Margin_16,
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(
                  right: ConstantValues.Margin_8,
                  left: ConstantValues.Margin_8),
              child: const Text(
                "Martin Li",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                    color: AppColors.colorOnPrimaryBg,
                    fontSize: ConstantValues.Font_Size_24,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: ConstantValues.Margin_16,
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(
                  right: ConstantValues.Margin_8,
                  left: ConstantValues.Margin_8),
              child: const Text(
                "Collection",
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                    color: AppColors.colorOnPrimaryBg,
                    fontSize: ConstantValues.Font_Size_16,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: ConstantValues.Margin_24,
            ),
          ],
        ),
      ).withMargin(ConstantValues.Margin_16));
    });
  }
}
