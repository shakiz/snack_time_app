import 'package:flutter/material.dart';
import 'package:pathao_app/constants/ConstantValues.dart';
import 'package:pathao_app/features/details/SnackItemDetailsViewModel.dart';
import 'package:provider/provider.dart';

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
              const SizedBox(
                height: ConstantValues.Margin_16,
              ),
              const SizedBox(
                height: ConstantValues.Margin_16,
              ),
            ],
          ),
        ));
      },
    );
  }
}
