import 'package:flutter/material.dart';
import 'package:maeys_kitchen/app_assets.dart';
import 'package:maeys_kitchen/app_colors.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration:  BoxDecoration(
        color: Colors.white,
        image: const DecorationImage(
          image: AssetImage(AppAssets.logo),
        ),
        border: Border.all(
          color: AppColors.primary,
          width: 2,
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}
