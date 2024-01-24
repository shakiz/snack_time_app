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
            Image.asset(
              Assets.images.largerAvatar.path,
              height: 124,
              width: 124,
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
              height: ConstantValues.Margin_8,
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
              height: ConstantValues.Margin_16,
            ),
            Container(
              height: 112,
              decoration: BoxDecoration(
                  color: AppColors.colorOnPrimary,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(ConstantValues.Radius_20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 1), // changes position of shadow
                    )
                  ]),
              child: Stack(
                children: [
                  Positioned(
                    left: 12,
                    top: 12,
                    height: ConstantValues.Font_Size_24,
                    width: ConstantValues.Font_Size_24,
                    child: SvgPicture.asset(Assets.icons.icLikeFill),
                  ),
                  const Positioned(
                      top: 12,
                      left: 40,
                      child: Text(
                        "Liked",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                            color: AppColors.colorOnPrimaryBg,
                            fontSize: ConstantValues.Font_Size_18,
                            fontWeight: FontWeight.w600),
                      )),
                  Positioned(
                      top: 44,
                      left: 12,
                      right: MediaQuery.of(context).size.width / 4,
                      child: const Text(
                        "Bacon, Panini, Pancakes, Cake, Bread",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                            color: AppColors.colorOnPrimaryBg,
                            fontSize: ConstantValues.Font_Size_18,
                            fontWeight: FontWeight.normal),
                      )),
                  Positioned(
                      top: 12,
                      right: 12,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                              Radius.circular(ConstantValues.Radius_8)),
                          child:
                              Image.asset(Assets.images.sampleLikedPic1.path))),
                  Positioned(
                      top: 40,
                      right: 40,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                              Radius.circular(ConstantValues.Radius_8)),
                          child:
                              Image.asset(Assets.images.sampleLikedPic2.path)))
                ],
              ),
            ),
            const SizedBox(
              height: ConstantValues.Margin_16,
            ),
            Container(
              height: 112,
              decoration: BoxDecoration(
                  color: AppColors.colorOnPrimary,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(ConstantValues.Radius_20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 1), // changes position of shadow
                    )
                  ]),
              child: Stack(
                children: [
                  const Positioned(
                      top: 12,
                      left: 12,
                      child: Text(
                        "My Meal Plan",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                            color: AppColors.colorOnPrimaryBg,
                            fontSize: ConstantValues.Font_Size_18,
                            fontWeight: FontWeight.w600),
                      )),
                  Positioned(
                      top: 44,
                      left: 12,
                      right: MediaQuery.of(context).size.width / 4,
                      child: const Text(
                        "Bacon, Panini, Pancakes, Cake, Bread",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                            color: AppColors.colorOnPrimaryBg,
                            fontSize: ConstantValues.Font_Size_18,
                            fontWeight: FontWeight.normal),
                      )),
                  Positioned(
                      top: 12,
                      right: 12,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                              Radius.circular(ConstantValues.Radius_8)),
                          child:
                              Image.asset(Assets.images.sampleLikedPic1.path))),
                  Positioned(
                      top: 40,
                      right: 40,
                      child: ClipRRect(
                          borderRadius: const BorderRadius.all(
                              Radius.circular(ConstantValues.Radius_8)),
                          child:
                              Image.asset(Assets.images.sampleLikedPic2.path)))
                ],
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
