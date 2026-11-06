import 'package:app/core/app_colors.dart';
import 'package:app/core/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  const new({super.key});
  static const layoutRoute = "/layout";

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: .fixed,
        showUnselectedLabels: false,
        backgroundColor: AppColors.primary,
        selectedItemColor: AppColors.white,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Assets.imgs.navbarIcons.icQuran.image(
              width: 25,
              color: AppColors.black,
            ),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              width: 60,
              height: 35,
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: AppColors.black.withAlpha(150),
              ),
              child: Assets.imgs.navbarIcons.icQuran.image(
                width: 20,
                color: AppColors.white,
              ),
            ),
            label: "Quran",
          ),
          BottomNavigationBarItem(
            icon: Assets.imgs.navbarIcons.icHadeth.image(width: 25),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              width: 60,
              height: 35,
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: AppColors.black.withAlpha(150),
              ),
              child: Assets.imgs.navbarIcons.icHadeth.image(
                width: 20,
                color: AppColors.white,
              ),
            ),
            label: "Hadith",
          ),
          BottomNavigationBarItem(
            icon: Assets.imgs.navbarIcons.icSebha.image(width: 25),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              width: 60,
              height: 35,
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: AppColors.black.withAlpha(150),
              ),
              child: Assets.imgs.navbarIcons.icSebha.image(
                width: 20,
                color: AppColors.white,
              ),
            ),
            label: "Tasbih",
          ),
          BottomNavigationBarItem(
            icon: Assets.imgs.navbarIcons.icRadio.image(width: 25),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              width: 60,
              height: 35,
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: AppColors.black.withAlpha(150),
              ),
              child: Assets.imgs.navbarIcons.icRadio.image(
                width: 20,
                color: AppColors.white,
              ),
            ),
            label: "Radio",
          ),
          BottomNavigationBarItem(
            icon: Assets.imgs.navbarIcons.icTime.image(width: 25),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              width: 60,
              height: 35,
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: AppColors.black.withAlpha(150),
              ),
              child: Assets.imgs.navbarIcons.icTime.image(
                width: 20,
                color: AppColors.white,
              ),
            ),
            label: "Time",
          ),
        ],
      ),
    );
  }
}
