import 'package:app/core/app_colors.dart';
import 'package:app/core/components/background.dart';
import 'package:app/core/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class Quran extends StatelessWidget {
  const new({super.key});
  static const homeRoute = "/quran";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        img: Assets.imgs.quran.quranBackground.image(
          fit: .cover,
          width: .infinity,
          height: .infinity,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              spacing: 20,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Assets.imgs.onboarding.group31.image(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    cursorColor: AppColors.primary,
            
                    decoration: InputDecoration(
                      hintText: "Sura Name",
                      hintStyle: Theme.of(context).textTheme.titleMedium!
                          .copyWith(color: AppColors.white, fontWeight: .bold),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Assets.imgs.navbarIcons.icQuran.image(
                          color: AppColors.primary,
                          height: 25,
                        ),
                      ),
            
                      filled: true,
                      fillColor: AppColors.black.withValues(alpha: 0.7),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: AppColors.primary,
                          width: 1,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: AppColors.primary,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: AppColors.primary,
                          width: 1,
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: .start,
                  spacing: 10,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "Most Recently",
                        style: Theme.of(context).textTheme.titleMedium!
                            .copyWith(
                              color: AppColors.white,
                              fontWeight: .bold,
                            ),
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView.separated(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        scrollDirection: .horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 15.0,
                                    top: 15,
                                    bottom: 15,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: .start,
                                    mainAxisAlignment: .center,
                                    spacing: 15,
                                    children: [
                                      Text(
                                        "Al-Anbiya",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(color: AppColors.black),
                                      ),
                                      Text(
                                        "الأنبياء",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(color: AppColors.black),
                                      ),
                                      Text(
                                        "112 Verses",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge,
                                      ),
                                    ],
                                  ),
                                ),
                                Assets.imgs.quran.quranSura.image(),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 10);
                        },
                        itemCount: 4,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "Suras List",
                        style: Theme.of(context).textTheme.titleMedium!
                            .copyWith(
                              color: AppColors.white,
                              fontWeight: .bold,
                            ),
                      ),
                    ),
                    ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      itemBuilder: (context, index) {
                        return Row(
                          spacing: 24,
                          children: [
                            Stack(
                              children: [
                                Assets.imgs.quran.vector.svg(),
                                Positioned(
                                  left: 20,
                                  top: 14,
                                  child: Text(
                                    (index + 1).toString(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(color: AppColors.white),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: .start,
                              spacing: 5,
                              children: [
                                Text(
                                  "Al-Fatiha",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(color: AppColors.white),
                                ),
                                Text(
                                  "7 Verses",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(color: AppColors.white),
                                ),
                              ],
                            ),
                          
                            Spacer(),
                            Text(
                              "الفاتحة",
                              style: Theme.of(context).textTheme.titleLarge!
                                  .copyWith(color: AppColors.white),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider(height: 20,indent: 40,endIndent: 40,);
                      },
                      itemCount: 114,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
