import 'package:app/core/app_colors.dart';
import 'package:app/core/gen/assets.gen.dart';
import 'package:app/features/quran/models/surah_model.dart';
import 'package:flutter/material.dart';

class MostRecentlyCard extends StatelessWidget {
  new({super.key, required this.surah,required this.onTap});
  SurahModel surah;
  Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){onTap();},
      child: Container(
        width: MediaQuery.widthOf(context) * 0.74,
        padding: .all(15),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(20),
        ),
      
        child: Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            Column(
              crossAxisAlignment: .start,
              mainAxisAlignment: .center,
              spacing: 15,
              children: [
                Text(
                  surah.nameEN,
                  style: Theme.of(context).textTheme.headlineSmall!
                      .copyWith(color: AppColors.black),
                ),
                Text(
                  surah.nameAR,
                  style: Theme.of(context).textTheme.headlineSmall!
                      .copyWith(color: AppColors.black),
                ),
                Text(
                  "${surah.ayatNumber} Verses",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ],
            ),
            Assets.imgs.quran.quranSura.image(),
          ],
        ),
      ),
    );
  }
}
