import 'package:app/core/Utils/shared_prefs_storage.dart';
import 'package:app/core/app_colors.dart';
import 'package:app/core/gen/assets.gen.dart';
import 'package:app/features/quran/screens/quran_screen.dart';
import 'package:app/features/layout/layout.dart';
import 'package:app/features/onboarding/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const new({super.key});
  static const splashRoute = "/splash";
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigate();
  }

  Future<void> _navigate() async {
    await Future.delayed(const Duration(seconds: 2));
    final bool isFirst = await SharedPrefsStorage.getBool("isFirst");
    if (!mounted) return;
    Navigator.pushReplacementNamed(
      context,
      isFirst ? OnboardingScreen.onboardingRoute : Layout.layoutRoute,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        children: [
          Spacer(),
          Assets.imgs.icSplash.image(),
          Spacer(),
          Assets.imgs.mosque02.image(),
        ],
      ),
    );
  }
}
