import 'package:flutter/cupertino.dart';
import 'package:pathao_app/constants/ConstantValues.dart';
import 'package:pathao_app/data/model/SnackItem.dart';

class CommonSnackItem extends StatefulWidget {
  SnackItem snackItem;

  CommonSnackItem({super.key, required this.snackItem});

  @override
  State<CommonSnackItem> createState() => _CommonSnackItemState(snackItem);
}

class _CommonSnackItemState extends State<CommonSnackItem> {
  SnackItem snackItem;

  _CommonSnackItemState(this.snackItem);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(ConstantValues.Radius_20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 2,
              offset: const Offset(0, 1), // changes position of shadow
            )
          ]),
      child: Column(
        children: [Image(image: AssetImage(snackItem.snackBannerUrl))],
      ),
    );
  }
}
