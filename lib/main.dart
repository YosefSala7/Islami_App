import 'package:app/core/app_theme.dart';
import 'package:app/features/Home/screens/home.dart';
import 'package:app/features/layout/layout.dart';
import 'package:app/features/onboarding/screens/onboarding_screen.dart';
import 'package:app/features/splash/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkTheme,
      initialRoute: SplashScreen.splashRoute,
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.splashRoute: (context) => SplashScreen(),
        OnboardingScreen.onboardingRoute: (context) => OnboardingScreen(),
        Home.homeRoute: (context) => Home(),
        Layout.layoutRoute: (context) => Layout(),
      },
    );
  }
}
