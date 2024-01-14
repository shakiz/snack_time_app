import 'package:flutter/material.dart';
import 'package:pathao_app/features/onboarding/OnBoardingPage.dart';
import 'package:pathao_app/features/onboarding/OnBoardingViewModel.dart';
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
      child: MaterialApp(
        title: 'Snack Time',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const OnBoardingPage(),
      ),
    );
  }
}
