import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:snack_time/common_widgets/OffersItem.dart';
import 'package:snack_time/gen/assets.gen.dart';
import '../../constants/ConstantValues.dart';
import '../../styles/AppColors.dart';
import 'OffersViewModel.dart';

class OffersPage extends StatefulWidget {
  const OffersPage({super.key});

  @override
  State<OffersPage> createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder:
        (BuildContext context, OffersViewModel offersViewModel, Widget? child) {
      return SafeArea(
          child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(ConstantValues.Padding_16),
          children: [
            const Text(
              "Offers Gallery",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: "Roboto",
                  decoration: TextDecoration.none,
                  color: AppColors.colorOnPrimaryBg,
                  fontSize: ConstantValues.Font_Size_20),
            ),
            const SizedBox(
              height: ConstantValues.Margin_16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Recommended For You",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontFamily: "Roboto",
                      decoration: TextDecoration.none,
                      color: AppColors.colorOnPrimaryBg,
                      fontSize: ConstantValues.Font_Size_16),
                ),
                SvgPicture.asset(Assets.icons.icFilter)
              ],
            ),
            const SizedBox(
              height: ConstantValues.Margin_16,
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: offersViewModel.offers.length,
              itemBuilder: (context, index) {
                return OfferItem(offers: offersViewModel.offers[index]);
              },
            ),
            const SizedBox(
              height: ConstantValues.Margin_24,
            )
          ],
        ),
      ));
    });
  }
}
