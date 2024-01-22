import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snack_time/common_widgets/Extensions.dart';
import 'package:snack_time/constants/ConstantValues.dart';
import 'package:snack_time/data/model/SnackItem.dart';
import 'package:snack_time/styles/AppColors.dart';

import '../gen/assets.gen.dart';

class DietItem extends StatefulWidget {
  SnackItem snackItem;
  double itemWidth;

  DietItem({super.key, required this.snackItem, required this.itemWidth});

  @override
  State<DietItem> createState() => _DietItemmState(snackItem, itemWidth);
}

class _DietItemmState extends State<DietItem> {
  SnackItem snackItem;
  double itemWidth;

  _DietItemmState(this.snackItem, this.itemWidth);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: itemWidth,
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
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(ConstantValues.Radius_20),
                  topRight: Radius.circular(ConstantValues.Radius_20)),
              child: Image(
                image: AssetImage(snackItem.snackBannerUrl),
                fit: BoxFit.cover,
                width: itemWidth,
                height: MediaQuery.of(context).size.height / 5,
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
              Container(
                  margin: const EdgeInsets.only(right: ConstantValues.Margin_8),
                  child: SvgPicture.asset(Assets.icons.icBookmark)),
            ],
          ),
          const SizedBox(
            height: ConstantValues.Margin_8,
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(
                right: ConstantValues.Margin_8, left: ConstantValues.Margin_8),
            child: Text(
              snackItem.title,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: const TextStyle(
                  color: AppColors.colorOnPrimaryBg,
                  fontSize: ConstantValues.Font_Size_24,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(
                right: ConstantValues.Margin_8, left: ConstantValues.Margin_8),
            child: const Text(
              "There are no good and bad foods, there are good and bad diets. What is unique about the traditional Mediterranean diet (MD) is that it suits most people and is easy to follow. A diet based primarily on plant-based whole foods, which means it is rich in dietary fiber, vitamins and antioxidants.",
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
              style: TextStyle(
                  color: AppColors.colorOnPrimaryBg,
                  fontSize: ConstantValues.Font_Size_12,
                  fontWeight: FontWeight.normal),
            ),
          ),
          const SizedBox(
            height: ConstantValues.Margin_8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      margin:
                          const EdgeInsets.only(left: ConstantValues.Margin_8),
                      child: Image(
                        image: AssetImage(Assets.images.icDummyUser.path),
                      )),
                  const SizedBox(
                    width: ConstantValues.Margin_4,
                  ),
                  Text(
                    snackItem.author,
                    style: const TextStyle(
                        color: AppColors.colorOnPrimaryBg,
                        fontSize: ConstantValues.Font_Size_16,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              Container(
                  margin: const EdgeInsets.only(right: ConstantValues.Margin_8),
                  child: SvgPicture.asset(Assets.icons.icLike)),
            ],
          ),
          GestureDetector(
            onTap: () {},
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
                  "Start Diet",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto",
                      decoration: TextDecoration.none,
                      color: AppColors.colorOnPrimaryBg,
                      fontSize: ConstantValues.Font_Size_16),
                )),
          ),
        ],
      ),
    ).withPaddingSeparate(0, 0, 0, 0).withMarginSeparate(
        ConstantValues.Margin_16,
        ConstantValues.Margin_16,
        0,
        ConstantValues.Margin_16);
  }
}
