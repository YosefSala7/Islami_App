import 'package:app/core/app_colors.dart';
import 'package:app/core/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Tasbih extends StatefulWidget {
  const new({super.key});
  static const tasbihRoute = "/tasbih";

  @override
  State<Tasbih> createState() => _TasbihState();
}

class _TasbihState extends State<Tasbih> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Assets.imgs.tasbih.sebhaBg.image(
            width: double.infinity,
            height: double.infinity,
            fit: .cover,
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: .bottomCenter,
                end: .topCenter,
                colors: [AppColors.black, AppColors.black.withAlpha(180)],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:50.0),
                    child: Assets.imgs.onboarding.group31.image(width: .infinity),
                  ),
                  Text(
                    "سَبِّحِ اسْمَ رَبِّكَ الأعلى",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  Column(
                    children: [
                      Assets.imgs.tasbih.group37.image(height: 85),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (counter == 30) {
                              counter = 0;
                              return;
                            }
                            counter++;
                          });
                        },

                        child: Stack(
                          children: [
                            AnimatedRotation(
                              turns: (1 / 30) * counter,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                              child: Assets.imgs.tasbih.sebhaBody1.image(),
                            ),
                            Positioned(
                              bottom: 120,
                              left: 90,
                              child: Column(
                                spacing: 20,
                                children: [
                                  Text(
                                    "سبحان الله",
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                  Text(
                                    counter.toString(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
