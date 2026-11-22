import 'package:app/core/app_colors.dart';
import 'package:app/core/gen/assets.gen.dart';
import 'package:app/features/quran/models/surah_model.dart';
import 'package:flutter/material.dart';

class SurahRow extends StatelessWidget {
  new({super.key, required this.surah, required this.onTap});
  SurahModel surah;
  Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Row(
        spacing: 24,
        children: [
          Stack(
            alignment: .center,
            children: [
              Assets.imgs.quran.vector.svg(),
              Text(
                surah.id,
                style: Theme.of(context).textTheme.titleLarge!
                    .copyWith(color: AppColors.white, fontSize: 14),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: .start,
            spacing: 5,
            children: [
              Text(
                surah.nameEN,
                style: Theme.of(context).textTheme.titleLarge!
                    .copyWith(color: AppColors.white),
              ),
              Text(
                "${surah.ayatNumber} Verses",
                style: Theme.of(context).textTheme.labelLarge!
                    .copyWith(color: AppColors.white),
              ),
            ],
          ),
          Spacer(),
          Text(
            surah.nameAR,
            style: Theme.of(context).textTheme.titleLarge!
                .copyWith(color: AppColors.white),
          ),
        ],
      ),
    );
  }
}
