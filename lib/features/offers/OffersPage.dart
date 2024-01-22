import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
        body: Container(),
      ));
    });
  }
}
