import 'package:flutter/material.dart';

extension ToColor on String {
 Color get color {
    String code = replaceAll("#", "0xFF");
    int intCode = int.tryParse(code) ?? 0;
    return  Color(intCode);
  }
}

extension ToMaterialColor on Color {
  MaterialColor get material {
    return MaterialColor(
      value,
      {
        50: this,
        100: this,
        200: this,
        300: this,
        400: this,
        500: this,
        600: this,
        700: this,
        800: this,
        900: this,
      },
    );
  }
}

class AppColors {
  AppColors._();

  static Color get primary => "#80745F".color;
  static Color get primaryDark => "#554229".color;
  static Color get primaryLight => "#A49781".color;
}
