import 'package:flutter/material.dart';
import 'package:snack_time/constants/ConstantValues.dart';

import '../styles/AppColors.dart';

class RecipeTableItemWidget extends StatelessWidget {
  String quantityStr, itemType;

  RecipeTableItemWidget(
      {super.key, required this.quantityStr, required this.itemType});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          left: ConstantValues.Margin_16, right: ConstantValues.Margin_16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                quantityStr,
                style: const TextStyle(
                    color: AppColors.colorOnPrimaryBg,
                    fontSize: ConstantValues.Font_Size_16,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(
            width: 120,
            child: Divider(
              color: AppColors.colorBorderDivider,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                itemType,
                style: const TextStyle(
                    color: AppColors.colorOnPrimaryBg,
                    fontSize: ConstantValues.Font_Size_16,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
