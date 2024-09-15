import 'package:get/get.dart';
import 'package:mfc/AppScreens/Dashboard_Screen/dashboard_screen.dart';
import 'package:mfc/AppScreens/Main_Screen/main_navigation.dart';
import 'package:mfc/AppScreens/Messags_Screen/message_screen.dart';
import 'package:mfc/AppScreens/Port_Screen/port_screen.dart';
import 'package:mfc/AppScreens/Services_Screen/munu_screen/ConfirmCardInformation/confirm_card_information_screen.dart';
import 'package:mfc/AppScreens/Services_Screen/munu_screen/Customer/customer_authentication_screen.dart';
import 'package:mfc/AppScreens/Services_Screen/services_screen.dart';
import 'package:mfc/AppScreens/Setup_Screen/setup_screen.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAINNAVIGATION;

  static final routes = [
    GetPage(
      name: _Paths.MAINNAVIGATION,
      page: () => const MainNavigation(),
    ),
    GetPage(
      name: _Paths.SERVICES,
      page: () => const ServicesScreen(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardScreen(),
    ),
    GetPage(
      name: _Paths.PORT,
      page: () => const PortScreen(),
    ),
    GetPage(
      name: _Paths.SETUP,
      page: () => SetupScreen(),
    ),
    GetPage(
      name: _Paths.MESSAGE,
      page: () => const MessageScreen(),
    ),
    GetPage(
      name: _Paths.CUSTOMER_AUTHENTICATION,
      page: () => const CustomerAuthenticationScreen(),
    ),
    GetPage(
      name: _Paths.CONFIRM_CARD_INFOMATION,
      page: () => ConfirmCardInformationScreen(),
    ),
  ];
}

abstract class Routes {
  Routes._();

  static const MAINNAVIGATION = _Paths.MAINNAVIGATION;
  static const SERVICES = _Paths.SERVICES;
  static const DASHBOARD = _Paths.DASHBOARD;
  static const PORT = _Paths.PORT;
  static const SETUP = _Paths.SETUP;
  static const MESSAGE = _Paths.MESSAGE;

  static const CUSTOMER_AUTHENTICATION = _Paths.CUSTOMER_AUTHENTICATION;

  static const CONFIRM_CARD_INFOMATION = _Paths.CONFIRM_CARD_INFOMATION;
}

abstract class _Paths {
  static const MAINNAVIGATION = '/mainnavigation';
  static const SERVICES = '/services';
  static const DASHBOARD = '/dashboard';
  static const PORT = '/port';
  static const SETUP = '/serup';
  static const MESSAGE = '/message';
  static const CUSTOMER_AUTHENTICATION = '/customer_authentication';

  static const CONFIRM_CARD_INFOMATION = '/paper_channels';
}
