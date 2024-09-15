import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../AppColors/app_colors.dart';
import '../../AppServices/language_service.dart';

class SetupScreen extends StatelessWidget {
  SetupScreen({super.key});
  final LanguageService languageService = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: Get.size.width,
          height: Get.size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.app_primary_color,
                AppColors.app_secondary_color
              ],
              tileMode: TileMode.clamp,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                final Locale newLocale = Get.locale == Locale('en', 'US')
                    ? Locale('th', 'TH')
                    : Locale('en', 'US');

                // Update locale and save preference
                Get.updateLocale(newLocale);
                languageService.saveLocale(newLocale);
              },
              child: Text('Switch Language'),
            ),
          ],
        ),
      ],
    ));
  }
}
