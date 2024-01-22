import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ProfileViewModel.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (BuildContext context,
        ProfileViewModel profileViewModel, Widget? child) {
      return SafeArea(
          child: Scaffold(
        body: Container(),
      ));
    });
  }
}
