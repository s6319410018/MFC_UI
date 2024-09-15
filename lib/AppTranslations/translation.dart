import 'package:get/route_manager.dart';

import 'en_US.dart';
import 'th_TH.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': EnUsTranslations.translations,
        'th_TH': ThThTranslations.translations,
      };
}
