import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

class LanguageService extends GetxService {
  static const String _languageKey = 'language_code';

  // Load the saved locale from shared preferences
  Future<void> loadLocale() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? languageCode = prefs.getString(_languageKey);

    if (languageCode != null) {
      Get.updateLocale(Locale(languageCode));
    } else {
      // Default locale if no preference is found
      Get.updateLocale(Locale('en', 'US'));
    }
  }

  // Save the selected locale to shared preferences
  Future<void> saveLocale(Locale locale) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_languageKey, locale.languageCode);
  }
}
