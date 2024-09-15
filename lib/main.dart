import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mfc/AppRouters/routing_system.dart';
import 'package:mfc/AppScreens/Main_Screen/main_navigation.dart';
import 'AppBindings/bindings.dart';
import 'AppServices/language_service.dart';
import 'AppThemes/Themes.dart';
import 'AppTranslations/translation.dart';

Future<void> main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();

  final LanguageService languageService = Get.put(LanguageService());
  await languageService.loadLocale();

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.themelight,
      darkTheme: AppThemes.themedark,
      themeMode: ThemeMode.system,
      initialRoute: Routes.MAINNAVIGATION,
      initialBinding: AppBindings(),
      home: const MainNavigation(),
      getPages: AppPages.routes,
      translations: MyTranslations(),
      locale: Get.locale,
      fallbackLocale: Get.locale,
    ),
  );
}
