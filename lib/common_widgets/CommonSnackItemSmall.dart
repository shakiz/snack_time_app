import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snack_time/common_widgets/Extensions.dart';
import 'package:snack_time/constants/ConstantValues.dart';
import 'package:snack_time/data/model/SnackItem.dart';
import 'package:snack_time/styles/AppColors.dart';

import '../gen/assets.gen.dart';

class CommonSnackItemSmall extends StatefulWidget {
  SnackItem snackItem;
  double itemWidth;

  CommonSnackItemSmall(
      {super.key, required this.snackItem, required this.itemWidth});

  @override
  State<CommonSnackItemSmall> createState() =>
      _CommonSnackItemSmallState(snackItem, itemWidth);
}

class _CommonSnackItemSmallState extends State<CommonSnackItemSmall> {
  SnackItem snackItem;
  double itemWidth;

  _CommonSnackItemSmallState(this.snackItem, this.itemWidth);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      width: itemWidth,
      height: itemWidth * 2,
      decoration: BoxDecoration(
          color: AppColors.colorOnPrimary,
          borderRadius: const BorderRadius.all(
            Radius.circular(ConstantValues.Radius_20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 1), // changes position of shadow
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(ConstantValues.Radius_20),
                  topRight: Radius.circular(ConstantValues.Radius_20)),
              child: Image(
                image: AssetImage(snackItem.snackBannerUrl),
                fit: BoxFit.cover,
                width: itemWidth,
                height: 148,
              )),
          SizedBox(
            height: 42,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: snackItem.tags.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(ConstantValues.Radius_24)),
                      color: AppColors.colorPrimary,
                    ),
                    child: Text(
                      "#${snackItem.tags[index]}",
                      style: const TextStyle(
                          fontSize: ConstantValues.Font_Size_12,
                          color: AppColors.colorOnPrimaryBg),
                    ),
                  )
                      .withPaddingSeparate(
                          ConstantValues.Padding_8,
                          ConstantValues.Padding_8,
                          ConstantValues.Padding_4,
                          ConstantValues.Padding_4)
                      .withMargin(ConstantValues.Margin_8);
                }),
          ),
          const SizedBox(
            height: ConstantValues.Margin_8,
          ),
          Container(
            margin: const EdgeInsets.only(
                right: ConstantValues.Margin_8, left: ConstantValues.Margin_8),
            child: Text(
              snackItem.title,
              style: const TextStyle(
                  color: AppColors.colorOnPrimaryBg,
                  fontSize: ConstantValues.Font_Size_16,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: ConstantValues.Margin_8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: const EdgeInsets.only(left: ConstantValues.Margin_8),
                  child: Image(
                    image: AssetImage(Assets.images.icDummyUser.path),
                  )),
              const SizedBox(
                width: ConstantValues.Margin_4,
              ),
              Container(
                  margin: const EdgeInsets.only(right: ConstantValues.Margin_8),
                  child: SvgPicture.asset(Assets.icons.icLike)),
            ],
          ),
        ],
      ),
    ).withPaddingSeparate(0, 0, 0, ConstantValues.Padding_8).withMarginSeparate(
        ConstantValues.Margin_16,
        0,
        ConstantValues.Margin_16,
        ConstantValues.Margin_16);
  }
}
