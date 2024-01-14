import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pathao_app/features/onboarding/OnBoardingViewModel.dart';
import 'package:pathao_app/routes/AppPages.dart';
import 'package:pathao_app/routes/AppRoutes.dart';
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
        ChangeNotifierProvider(create: (context) => OnBoardingViewModel())
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
