import 'package:app/core/app_colors.dart';
import 'package:app/core/gen/assets.gen.dart';
import 'package:app/features/home/screens/home.dart';
import 'package:app/features/layout/layout.dart';
import 'package:app/features/onboarding/models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

class OnboardingScreen extends StatefulWidget {
  const new({super.key});
  static const onboardingRoute = "/onboarding";
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  int currentIndex = 0;
  late PageController _controller;
  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: currentIndex);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: .center,
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _controller,
                  onPageChanged: (value) {
                    currentIndex = value;
                    setState(() {});
                  },
                  itemCount: onboardingScreens.length,
                  itemBuilder: (context, index) {
                    return Column(
                      spacing: 20,
                      children: [
                        Assets.imgs.onboarding.group31.image(width: 300),
                        onboardingScreens[index].img,
                        Text(
                          onboardingScreens[index].title,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        onboardingScreens[index].body != null
                            ? Text(
                                onboardingScreens[index].body!,
                                textAlign: .center,
                                style: Theme.of(context).textTheme.titleLarge,
                              )
                            : SizedBox.shrink(),
                      ],
                    );
                  },
                ),
              ),
              Row(
                children: [
                  currentIndex != 0
                      ? SizedBox(
                          width: 45,
                          child: Bounceable(
                            onTap: () {
                              _controller.previousPage(
                                duration: Duration(milliseconds: 200),
                                curve: Curves.easeInOut,
                              );
                            },
                            child: Text(
                              "Back",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                        )
                      : SizedBox(width: 45),
                  Spacer(),
                  Row(
                    children: List.generate(onboardingScreens.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          width: index == currentIndex ? 20 : 8,
                          height: 8,
                          decoration: ShapeDecoration(
                            shape: StadiumBorder(),
                            color: index == currentIndex
                                ? AppColors.primary
                                : Colors.grey,
                          ),
                        ),
                      );
                    }),
                  ),
                  Spacer(),
                  Bounceable(
                    onTap: () {
                      currentIndex == onboardingScreens.length - 1
                          ? Navigator.pushReplacementNamed(
                              context,
                              Layout.layoutRoute,
                            )
                          : _controller.nextPage(
                              duration: Duration(milliseconds: 200),
                              curve: Curves.easeInOut,
                            );
                    },
                    child: SizedBox(
                      width: 45,
                      child: Text(
                        currentIndex == onboardingScreens.length - 1
                            ? "Finish"
                            : "Next",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
