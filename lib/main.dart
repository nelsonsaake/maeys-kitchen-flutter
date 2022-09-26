import 'package:flutter/material.dart';
import 'package:maeys_kitchen/app_strings.dart';

import 'app_colors.dart';
import 'home_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      theme: ThemeData(
        primarySwatch: AppColors.primary.material,
      ),
      home: const HomePageView(title: AppStrings.appName),
    );
  }
}
