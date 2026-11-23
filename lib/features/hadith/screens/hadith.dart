import 'package:app/core/app_colors.dart';
import 'package:app/core/components/background.dart';
import 'package:app/core/gen/assets.gen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HadithView extends StatelessWidget {
  const new({super.key});
  static const homeRoute = "/home";
  @override
  Widget build(BuildContext context) {
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
                  itemCount: 5,
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
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: .spaceBetween,
                                    children: [
                                      Assets.imgs.leftCorner.image(
                                        color: AppColors.black,
                                        width: 90,
                                      ),
                                      Text(
                                        "الحد يث الأول",
                                        style: textTheme.headlineSmall
                                            ?.copyWith(
                                              color: AppColors.black,
                                              fontSize: 20,
                                            ),
                                      ),
                                      Assets.imgs.rightCorner.image(
                                        color: AppColors.black,
                                        width: 90,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    ''' عن أمـيـر المؤمنـين أبي حـفص عمر بن الخطاب رضي الله عنه ، قال : سمعت رسول الله صلى الله عـليه وسلم يـقـول : ( إنـما الأعـمـال بالنيات وإنـمـا لكـل امـرئ ما نـوى . فمن كـانت هجرته إلى الله ورسولـه فهجرتـه إلى الله ورسـوله ومن كانت هجرته لـدنيا يصـيبها أو امرأة ينكحها فهجرته إلى ما هاجر إليه ).
رواه إمام المحد ثين أبـو عـبـد الله محمد بن إسماعـيل بن ابراهـيـم بن المغـيره بن بـرد زبه البخاري الجعـفي،[رقم:1] وابـو الحسـيـن مسلم بن الحجاج بن مـسلم القـشـيري الـنيسـابـوري [رقم :1907] رضي الله عنهما في صحيحيهما اللذين هما أصح الكتب المصنفه. 
''',
                                    style: textTheme.bodyLarge?.copyWith(
                                      height: 1.7,
                                    ),
                                    textAlign: .center,
                                    textDirection: .rtl,
                                  ),
                                ],
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
}
