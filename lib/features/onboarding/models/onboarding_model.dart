import 'package:app/core/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class OnboardingModel {
  final Image img;
  final String title;
  final String? body;

  new({required this.img, required this.title, this.body});
}

List<OnboardingModel> onboardingScreens = [
  OnboardingModel(
    img: Assets.imgs.onboarding.frame3.image(),
    title: "Welcome To Islami App",
  ),
  OnboardingModel(
    img: Assets.imgs.onboarding.onboarding2.image(),
    title: "Welcome To Islami App",
    body: "We Are Very Excited To Have You In Our Community",
  ),
  OnboardingModel(
    img: Assets.imgs.onboarding.frame31.image(),
    title: "Reading the Quran",
    body: "Read, and your Lord is the Most Generous",
  ),
  OnboardingModel(
    img: Assets.imgs.onboarding.frame32.image(),
    title: "Bearish",
    body: "Praise the name of your Lord, the Most High",
  ),
  OnboardingModel(
    img: Assets.imgs.onboarding.frame33.image(),
    title: "Holy Quran Radio",
    body: "You can listen to the Holy Quran Radio through the application for free and easily",
  ),
];
