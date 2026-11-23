import 'package:app/core/app_colors.dart';
import 'package:app/core/components/background.dart';
import 'package:app/core/gen/assets.gen.dart';
import 'package:app/features/hadith/models/hadith_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HadithView extends StatefulWidget {
  const new({super.key});
  static const homeRoute = "/home";

  @override
  State<HadithView> createState() => _HadithViewState();
}

class _HadithViewState extends State<HadithView> {
  @override
  Widget build(BuildContext context) {
    if (hadithList.isEmpty) getHadithList();
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Background(
        img: Assets.imgs.hadith.background.image(
          fit: .cover,
          width: .infinity,
          height: .infinity,
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Assets.imgs.onboarding.group31.image(),
              ),
              Expanded(
                child: CarouselSlider.builder(
                  itemCount: hadithList.length,
                  itemBuilder: (context, itemIndex, pageViewIndex) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        clipBehavior: .hardEdge,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: .bottomCenter,
                              child: Assets.imgs.mosque02.image(fit: .cover),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Assets.imgs.hadith.hadithCardBackGround
                                    .image(),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment: .spaceBetween,
                                          children: [
                                            Assets.imgs.leftCorner.image(
                                              color: AppColors.black,
                                              width: 90,
                                            ),
                                            Assets.imgs.rightCorner.image(
                                              color: AppColors.black,
                                              width: 90,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 200,
                                          child: Text(
                                            textAlign: .center,
                                            hadithList[itemIndex].title,
                                            style: textTheme.headlineSmall
                                                ?.copyWith(
                                                  color: AppColors.black,
                                                  fontSize: 20,
                                                  wordSpacing: 0,
                                                  letterSpacing: 0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      hadithList[itemIndex].body,
                                      style: textTheme.bodyLarge?.copyWith(
                                        height: 1.7,
                                      ),
                                      textAlign: .center,
                                      textDirection: .rtl,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    height: 550,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.2,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<HadithModel> hadithList = [];

  Future<void> getHadithList() async {
    String hadith = "";
    List<String> h = [];
    for (int i = 1; i <= 50; i++) {
      hadith = await rootBundle.loadString("assets/Hadeeth/h$i.txt");
      h = hadith.split("\n");
      hadithList.add(HadithModel(title: h[0].trim(), body: h[1].trim()));
    }
    setState(() {});
  }
}
