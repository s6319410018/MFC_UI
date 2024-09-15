import 'package:get/get.dart';
import '../AppScreens/Services_Screen/munu_screen/ConfirmCardInformation/confirm_card_informationCtrl.dart';
import '../AppScreens/Services_Screen/munu_screen/Customer/customer_authenticationCtrl.dart';
import '../Appscreens/Services_Screen/ServicesCtrl.dart';
import '../Appscreens/Main_Screen/MainNavigationCtrl.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ServicesScreenController>(() => ServicesScreenController(),
        fenix: true);

    Get.lazyPut<MainNavigationController>(() => MainNavigationController(),
        fenix: true);
    Get.lazyPut<CustomerAuthenticationController>(
        () => CustomerAuthenticationController(),
        fenix: true);
    Get.lazyPut<ConfirmCardInformationScreenController>(
        () => ConfirmCardInformationScreenController(),
        fenix: true);
  }
}
