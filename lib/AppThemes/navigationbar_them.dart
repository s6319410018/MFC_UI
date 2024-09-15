import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../AppColors/app_colors.dart';

class CustomNavigationBarTheme {
  static NavigationBarThemeData get navigationBarThemeData =>
      NavigationBarThemeData(
        height: 90,
        indicatorColor: Colors.transparent,
        backgroundColor: Colors.white,
        indicatorShape: const CircleBorder(),
        labelTextStyle: WidgetStateTextStyle.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return TextStyle(
              fontSize: Get.size.width * 0.03,
              color: AppColors.app_primary_color,
            );
          }
          return TextStyle(
            overflow: TextOverflow.ellipsis,
            fontSize: Get.size.width * 0.03,
            color: AppColors.app_third_color,
          );
        }),
      );
}
