import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'features/MainViewModel.dart';
import 'features/details/SnackItemDetailsViewModel.dart';
import 'features/home/HomeViewModel.dart';
import 'features/offers/OffersViewModel.dart';
import 'features/onboarding/OnBoardingViewModel.dart';
import 'features/orders/OrdersViewModel.dart';
import 'features/profile/ProfileViewModel.dart';
import 'routes/AppPages.dart';
import 'routes/AppRoutes.dart';

class SnackTimeApp extends StatelessWidget {
  const SnackTimeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => OnBoardingViewModel()),
        ChangeNotifierProvider(create: (context) => MainViewModel()),
        ChangeNotifierProvider(create: (context) => HomeVIewModel()),
        ChangeNotifierProvider(create: (context) => OffersViewModel()),
        ChangeNotifierProvider(create: (context) => OrdersViewModel()),
        ChangeNotifierProvider(
            create: (context) => SnackItemDetailsViewModel()),
        ChangeNotifierProvider(create: (context) => ProfileViewModel())
      ],
      child: GetMaterialApp(
        title: 'Snack Time',
        initialRoute: AppRoutes.APP_ROUTE_ONBOARDING,
        getPages: AppPages.routes,
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.native,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      ),
    );
  }
}
