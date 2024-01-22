import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pathao_app/common_widgets/RecipeTableItem.dart';
import 'package:pathao_app/common_widgets/ShortcutWidget.dart';
import 'package:pathao_app/constants/ConstantValues.dart';
import 'package:pathao_app/features/details/SnackItemDetailsViewModel.dart';
import 'package:pathao_app/gen/assets.gen.dart';
import 'package:pathao_app/routes/AppRoutes.dart';
import 'package:provider/provider.dart';

import '../../styles/AppColors.dart';

class SnackItemDetails extends StatefulWidget {
  const SnackItemDetails({super.key});

  @override
  State<SnackItemDetails> createState() => _SnackItemDetailsState();
}

class _SnackItemDetailsState extends State<SnackItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context,
          SnackItemDetailsViewModel snackItemDetailsViewModel, Widget? child) {
        return SafeArea(
            child: Scaffold(
          body: ListView(
            children: [
              Stack(
                children: [
                  ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5),
                      // Set the color and opacity here
                      BlendMode.srcATop,
                    ),
                    child: Image(
                      image: AssetImage(Assets.images.bannerItemDetails.path),
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: 16,
                    left: 16,
                    height: ConstantValues.Icon_Size_24,
                    width: ConstantValues.Icon_Size_24,
                    child: GestureDetector(
                        onTap: () {
                          //Get.offNamed(AppRoutes.APP_ROUTE_HOME);
                        },
                        child: SvgPicture.asset(Assets.icons.icArrowLeft)),
                  ),
                  Positioned(
                    top: 16,
                    right: 16,
                    height: ConstantValues.Icon_Size_24,
                    width: ConstantValues.Icon_Size_24,
                    child: SvgPicture.asset(Assets.icons.icShare),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Image(
                        image: AssetImage(Assets.icons.icPlayWithBg.path),
                        height: ConstantValues.Icon_Size_64,
                        width: ConstantValues.Icon_Size_64,
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 24,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              margin: const EdgeInsets.only(
                                  left: ConstantValues.Margin_8),
                              child: Image(
                                height: ConstantValues.Icon_Size_24,
                                width: ConstantValues.Icon_Size_24,
                                image:
                                    AssetImage(Assets.images.icDummyUser.path),
                              )),
                          const SizedBox(
                            width: ConstantValues.Margin_4,
                          ),
                          const Text(
                            "Name Chef",
                            style: TextStyle(
                                color: AppColors.colorOnPrimary,
                                fontSize: ConstantValues.Font_Size_16,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      )),
                  const Positioned(
                      bottom: 48,
                      left: 16,
                      right: 16,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Ingredient class BLT(Potato, Brad, Tomato, Carrot)",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                              color: AppColors.colorOnPrimary,
                              fontSize: ConstantValues.Font_Size_24,
                              fontWeight: FontWeight.w600),
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: ConstantValues.Margin_8,
              ),
              Align(
                alignment: Alignment.center,
                child: RatingBarIndicator(
                  rating: 2.75,
                  itemBuilder: (context, index) => const Icon(
                    Icons.star,
                    color: AppColors.colorPrimary,
                  ),
                  itemCount: 5,
                  itemSize: ConstantValues.Icon_Size_40,
                  direction: Axis.horizontal,
                ),
              ),
              const SizedBox(
                height: ConstantValues.Margin_8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.icons.icBookmark),
                  const SizedBox(
                    width: ConstantValues.Margin_8,
                  ),
                  const Text(
                    "14.2k",
                    style: TextStyle(
                        color: AppColors.colorOnPrimaryBg,
                        fontSize: ConstantValues.Font_Size_20,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: ConstantValues.Margin_20,
                  ),
                  SvgPicture.asset(Assets.icons.icLike),
                  const SizedBox(
                    width: ConstantValues.Margin_8,
                  ),
                  const Text(
                    "Save",
                    style: TextStyle(
                        color: AppColors.colorOnPrimaryBg,
                        fontSize: ConstantValues.Font_Size_20,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              const SizedBox(
                height: ConstantValues.Margin_16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    width: ConstantValues.Margin_16,
                  ),
                  ShortcutWidget(asset: Assets.icons.icWatch, title: "15 min"),
                  const SizedBox(
                    width: ConstantValues.Margin_16,
                  ),
                  ShortcutWidget(asset: Assets.icons.icReaction, title: "Easy"),
                  const SizedBox(
                    width: ConstantValues.Margin_16,
                  ),
                  ShortcutWidget(asset: Assets.icons.icFire, title: "150 Cal"),
                  const SizedBox(
                    width: ConstantValues.Margin_16,
                  ),
                ],
              ),
              const SizedBox(
                height: ConstantValues.Margin_8,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Ingredients",
                  style: TextStyle(
                      color: AppColors.colorOnPrimaryBg,
                      fontSize: ConstantValues.Font_Size_20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: ConstantValues.Margin_8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        padding: const EdgeInsets.all(ConstantValues.Padding_8),
                        decoration: const BoxDecoration(
                            color: AppColors.colorBorderDivider,
                            borderRadius: BorderRadius.all(
                              Radius.circular(100),
                            )),
                        child: SvgPicture.asset(Assets.icons.icMinus)),
                  ),
                  const SizedBox(
                    width: ConstantValues.Margin_24,
                  ),
                  const Text(
                    "0",
                    style: TextStyle(
                        color: AppColors.colorOnPrimaryBg,
                        fontSize: ConstantValues.Font_Size_32,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: ConstantValues.Margin_24,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        padding: const EdgeInsets.all(ConstantValues.Padding_8),
                        decoration: const BoxDecoration(
                            color: AppColors.colorBorderDivider,
                            borderRadius: BorderRadius.all(
                              Radius.circular(100),
                            )),
                        child: SvgPicture.asset(Assets.icons.icPlus)),
                  ),
                ],
              ),
              const SizedBox(
                height: ConstantValues.Margin_8,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "SERVINGS",
                  style: TextStyle(
                      color: AppColors.colorOnPrimaryBg,
                      fontSize: ConstantValues.Font_Size_16,
                      fontWeight: FontWeight.normal),
                ),
              ),
              const SizedBox(
                height: ConstantValues.Margin_16,
              ),
              RecipeTableItemWidget(
                  quantityStr: "8 slices", itemType: "bacon(thick-cut)"),
              RecipeTableItemWidget(quantityStr: "2 rolls", itemType: "bread"),
              RecipeTableItemWidget(quantityStr: "1", itemType: "pepper"),
              RecipeTableItemWidget(
                  quantityStr: "8 tbsp", itemType: "mayonnaise"),
              const SizedBox(
                height: ConstantValues.Margin_16,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Nutrition",
                  style: TextStyle(
                      color: AppColors.colorOnPrimaryBg,
                      fontSize: ConstantValues.Font_Size_20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: ConstantValues.Margin_8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ShortcutWidget(
                      asset: Assets.icons.icNutrition1, title: "Protein- 40g"),
                  ShortcutWidget(
                      asset: Assets.icons.icNutrition2, title: "Fats-08g"),
                  ShortcutWidget(
                      asset: Assets.icons.icNutrition3, title: "Carbs-20g")
                ],
              ),
              const SizedBox(
                height: ConstantValues.Margin_16,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Utensils",
                  style: TextStyle(
                      color: AppColors.colorOnPrimaryBg,
                      fontSize: ConstantValues.Font_Size_20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: ConstantValues.Margin_8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ShortcutWidget(asset: Assets.icons.icUtensils1, title: "Pan"),
                  ShortcutWidget(
                      asset: Assets.icons.icUtensils2, title: "Grater"),
                  ShortcutWidget(asset: Assets.icons.icUtensils3, title: "Cup")
                ],
              ),
              const SizedBox(
                height: ConstantValues.Margin_16,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Reviews",
                  style: TextStyle(
                      color: AppColors.colorOnPrimaryBg,
                      fontSize: ConstantValues.Font_Size_20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: ConstantValues.Margin_8,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "86 comments - 25  images",
                  style: TextStyle(
                      color: AppColors.colorOnPrimaryBg,
                      fontSize: ConstantValues.Font_Size_16,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: ConstantValues.Margin_8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(
                        Radius.circular(ConstantValues.Radius_16)),
                    child: Image(
                      image: AssetImage(Assets.images.reviewImage1.path),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(
                        Radius.circular(ConstantValues.Radius_16)),
                    child: Image(
                      image: AssetImage(Assets.images.reviewImage2.path),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(
                        Radius.circular(ConstantValues.Radius_16)),
                    child: Image(
                      image: AssetImage(Assets.images.reviewImage3.path),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: ConstantValues.Margin_16,
              ),
              Container(
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
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Start Cooking",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: "Roboto",
                            decoration: TextDecoration.none,
                            color: AppColors.colorOnPrimaryBg,
                            fontSize: ConstantValues.Font_Size_16),
                      ),
                      const SizedBox(
                        width: ConstantValues.Margin_4,
                      ),
                      SvgPicture.asset(
                        Assets.icons.icRightArrow,
                        width: ConstantValues.Icon_Size_20,
                        height: ConstantValues.Icon_Size_20,
                      )
                    ],
                  )),
              const SizedBox(
                height: ConstantValues.Margin_24,
              ),
            ],
          ),
        ));
      },
    );
  }
}
