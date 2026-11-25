import 'dart:math';

import 'package:app/core/app_colors.dart';
import 'package:app/core/gen/assets.gen.dart';
import 'package:app/features/quran/models/surah_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuranDetailsScreen extends StatefulWidget {
  const new({super.key});
  static String quranDetialsRoute = "/Quran Detials";

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)!.settings.arguments as SurahModel;
    if (verses.isEmpty) loadData(data.id);
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        foregroundColor: AppColors.primary,
        title: Text(data.nameEN),
        centerTitle: true,
      ),
      body: Stack(
        alignment: .topCenter,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Assets.imgs.leftCorner.image(width: 90),
                    Spacer(),
                    Text(data.nameAR, style: textTheme.headlineSmall),
                    Spacer(),
                    Assets.imgs.rightCorner.image(width: 90),
                  ],
                ),
              ),

              Expanded(
                child: ListView.separated(
                  padding: .symmetric(horizontal: 20),
                  itemBuilder: (context, index) {
                    return Text(
                      textDirection: .rtl,
                      textAlign: .center,
                      "${verses[index]} ${{index + 1}}",
                      style: textTheme.titleLarge!.copyWith(height: 1.6),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 2);
                  },
                  itemCount: verses.length,
                ),
              ),
              Assets.imgs.mosque02.image(),
            ],
          ),
        ],
      ),
    );
  }

  List<String> verses = [];
  Future<void> loadData(String num) async {
    String content = await rootBundle.loadString("assets/Suras/$num.txt");
    verses = content.split("\n");
    setState(() {});
  }
}
