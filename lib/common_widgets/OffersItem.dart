import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snack_time/data/model/Offers.dart';

import '../constants/ConstantValues.dart';
import '../gen/assets.gen.dart';
import '../styles/AppColors.dart';

class OfferItem extends StatefulWidget {
  Offers offers;

  OfferItem({super.key, required this.offers});

  @override
  State<OfferItem> createState() => _OfferItemState(this.offers);
}

class _OfferItemState extends State<OfferItem> {
  Offers offers;

  _OfferItemState(this.offers);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: ConstantValues.Margin_16),
      padding: const EdgeInsets.all(ConstantValues.Padding_4),
      decoration: BoxDecoration(
          color: AppColors.colorOnPrimary,
          borderRadius: const BorderRadius.all(
            Radius.circular(ConstantValues.Radius_16),
          ),
          border: Border.all(color: AppColors.colorBorderDivider, width: 1)),
      child: ListTile(
        leading: Image.asset(
          offers.iconUrl,
          height: ConstantValues.Icon_Size_64,
          width: ConstantValues.Icon_Size_64,
        ),
        title: Text(
          offers.offerTitle,
          style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: "Roboto",
              decoration: TextDecoration.none,
              color: AppColors.colorOnPrimaryBg,
              fontSize: ConstantValues.Font_Size_16),
        ),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              offers.offerDescription,
              style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontFamily: "Roboto",
                  decoration: TextDecoration.none,
                  color: AppColors.colorOnPrimaryBg,
                  fontSize: ConstantValues.Font_Size_12),
            ),
            const SizedBox(
              height: ConstantValues.Margin_8,
            ),
            FittedBox(
              fit: BoxFit.contain,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: const EdgeInsets.only(
                          left: ConstantValues.Padding_16,
                          right: ConstantValues.Padding_16),
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                              Radius.circular(ConstantValues.Radius_16)),
                          color: AppColors.colorPrimary.withOpacity(0.2)),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            Assets.icons.icRating,
                            height: ConstantValues.Icon_Size_16,
                            width: ConstantValues.Icon_Size_16,
                            colorFilter: const ColorFilter.mode(
                                AppColors.colorPrimary, BlendMode.srcIn),
                          ),
                          const SizedBox(
                            width: ConstantValues.Margin_4,
                          ),
                          Text(
                            offers.offerRating,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                  const SizedBox(
                    width: ConstantValues.Margin_4,
                  ),
                  Container(
                      padding: const EdgeInsets.only(
                          left: ConstantValues.Padding_16,
                          right: ConstantValues.Padding_16),
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                              Radius.circular(ConstantValues.Radius_16)),
                          color: Colors.blue.withOpacity(0.2)),
                      child: Text(offers.offerCategory,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue))),
                  const SizedBox(
                    width: ConstantValues.Margin_4,
                  ),
                  Container(
                      padding: const EdgeInsets.only(
                          left: ConstantValues.Padding_16,
                          right: ConstantValues.Padding_16),
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                              Radius.circular(ConstantValues.Radius_16)),
                          color: Colors.red.withOpacity(0.2)),
                      child: Text(offers.validityInDays,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red))),
                  const SizedBox(
                    width: ConstantValues.Margin_4,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
