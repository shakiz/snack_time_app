import 'package:flutter/material.dart';
import 'package:snack_time/data/model/OrderHistory.dart';
import 'package:snack_time/gen/assets.gen.dart';

import '../constants/ConstantValues.dart';
import '../styles/AppColors.dart';

class OrderHistoryItem extends StatefulWidget {
  OrderHistory orderHistory;

  OrderHistoryItem({super.key, required this.orderHistory});

  @override
  State<OrderHistoryItem> createState() => _OrderHistoryItemState(orderHistory);
}

class _OrderHistoryItemState extends State<OrderHistoryItem> {
  OrderHistory orderHistory;

  _OrderHistoryItemState(this.orderHistory);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(ConstantValues.Padding_16),
      margin: const EdgeInsets.only(bottom: ConstantValues.Margin_16),
      decoration: BoxDecoration(
          borderRadius:
              const BorderRadius.all(Radius.circular(ConstantValues.Radius_8)),
          border: Border.all(color: AppColors.colorBorderDivider, width: 2)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.all(
                  Radius.circular(ConstantValues.Radius_16)),
              child: Image.asset(
                Assets.images.bannerItemDetails.path,
                height: 96,
                width: 96,
                fit: BoxFit.fill,
              )),
          const SizedBox(
            height: ConstantValues.Margin_4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Order ID",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: "Roboto",
                    decoration: TextDecoration.none,
                    color: Colors.black54,
                    fontSize: ConstantValues.Font_Size_12),
              ),
              Text(
                orderHistory.orderId,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: "Roboto",
                    decoration: TextDecoration.none,
                    color: AppColors.colorOnPrimaryBg,
                    fontSize: ConstantValues.Font_Size_16),
              )
            ],
          ),
          const SizedBox(
            height: ConstantValues.Margin_4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Total Items",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: "Roboto",
                    decoration: TextDecoration.none,
                    color: Colors.black54,
                    fontSize: ConstantValues.Font_Size_12),
              ),
              Text(
                "${orderHistory.quantity}",
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: "Roboto",
                    decoration: TextDecoration.none,
                    color: AppColors.colorOnPrimaryBg,
                    fontSize: ConstantValues.Font_Size_16),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Status",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: "Roboto",
                    decoration: TextDecoration.none,
                    color: Colors.black54,
                    fontSize: ConstantValues.Font_Size_12),
              ),
              Text(
                orderHistory.orderStatus,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: "Roboto",
                    decoration: TextDecoration.none,
                    color: AppColors.colorSuccess,
                    fontSize: ConstantValues.Font_Size_16),
              )
            ],
          ),
          const SizedBox(
            height: ConstantValues.Margin_4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Rate for Products",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: "Roboto",
                    decoration: TextDecoration.none,
                    color: AppColors.colorOnPrimaryBg,
                    fontSize: ConstantValues.Font_Size_12),
              ),
              Container(
                margin: EdgeInsets.zero,
                padding: const EdgeInsets.only(
                    left: ConstantValues.Padding_16,
                    right: ConstantValues.Padding_16,
                    top: ConstantValues.Padding_2,
                    bottom: ConstantValues.Padding_2),
                decoration: const BoxDecoration(
                    color: AppColors.colorPrimary,
                    borderRadius: BorderRadius.all(
                        Radius.circular(ConstantValues.Radius_8))),
                child: const Text(
                  "Re-Order",
                  style: TextStyle(color: AppColors.colorOnPrimary),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
