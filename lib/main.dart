import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snack_time/features/MainViewModel.dart';
import 'package:snack_time/features/details/SnackItemDetailsViewModel.dart';
import 'package:snack_time/features/home/HomeViewModel.dart';
import 'package:snack_time/features/offers/OffersViewModel.dart';
import 'package:snack_time/features/onboarding/OnBoardingViewModel.dart';
import 'package:snack_time/features/orders/OrdersViewModel.dart';
import 'package:snack_time/features/profile/ProfileViewModel.dart';
import 'package:snack_time/routes/AppPages.dart';
import 'package:snack_time/routes/AppRoutes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      ),
    );
  }
}
