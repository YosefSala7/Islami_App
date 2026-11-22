import 'package:app/core/app_colors.dart';
import 'package:app/core/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  new({super.key, required this.img,required this.child});
  Image img;
  Widget child;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        img,
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
        child
      ],
    );
  }
}
