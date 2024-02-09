import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:snack_time/features/splash/SplashViewModel.dart';

import '../../gen/assets.gen.dart';
import '../../styles/AppColors.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: AppColors.colorOnPrimary));
    return Consumer<SplashViewModel>(
      builder: (BuildContext context, SplashViewModel splashViewModel,
          Widget? child) {
        splashViewModel.moveToOnBoarding();
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Lottie.asset(Assets.animations.splashAnim),
            ),
          ),
        );
      },
    );
  }
}
