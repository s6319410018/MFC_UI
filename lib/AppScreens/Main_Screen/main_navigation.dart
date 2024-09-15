import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mfc/AppScreens/Dashboard_Screen/dashboard_screen.dart';
import 'package:mfc/AppScreens/Messags_Screen/message_screen.dart';
import 'package:mfc/AppScreens/Port_Screen/port_screen.dart';
import 'package:mfc/AppScreens/Setup_Screen/setup_screen.dart';
import 'package:mfc/Appscreens/Main_Screen/MainNavigationCtrl.dart';
import 'package:mfc/Appscreens/Services_Screen/services_screen.dart';

class MainNavigation extends StatelessWidget {
  const MainNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<MainNavigationController>(
      init: MainNavigationController(),
      builder: (controller) => Scaffold(
        extendBody: true,
        body: IndexedStack(
          index: controller.navbarIndex.value,
          children: [
            Navigator(
              key: GlobalKey<NavigatorState>(),
              onGenerateRoute: (routeSettings) {
                return MaterialPageRoute(
                  builder: (context) => DashboardScreen(),
                );
              },
            ),
            Navigator(
              key: GlobalKey<NavigatorState>(),
              onGenerateRoute: (routeSettings) {
                return MaterialPageRoute(
                  builder: (context) => PortScreen(),
                );
              },
            ),
            Navigator(
              key: GlobalKey<NavigatorState>(),
              onGenerateRoute: (routeSettings) {
                return MaterialPageRoute(
                  builder: (context) => ServicesScreen(),
                );
              },
            ),
            Navigator(
              key: GlobalKey<NavigatorState>(),
              onGenerateRoute: (routeSettings) {
                return MaterialPageRoute(
                  builder: (context) => MessageScreen(),
                );
              },
            ),
            Navigator(
              key: GlobalKey<NavigatorState>(),
              onGenerateRoute: (routeSettings) {
                return MaterialPageRoute(
                  builder: (context) => SetupScreen(),
                );
              },
            ),
          ],
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(25)),
          child: NavigationBar(
            selectedIndex: controller.navbarIndex.value,
            onDestinationSelected: (value) {
              controller.navbarIndex.value = value;
            },
            destinations: [
              NavigationDestination(
                icon: Image.asset(
                  'assets/images/navigation/navigationbar_dashboard.png',
                  width: 24,
                  height: 24,
                ),
                selectedIcon: Image.asset(
                  'assets/images/navigation/navigationbar_dashboard_color.png',
                  width: 24,
                  height: 24,
                ),
                label: 'dashboard'.tr,
              ),
              NavigationDestination(
                icon: Image.asset(
                  'assets/images/navigation/navigationbar_port.png',
                  width: 24,
                  height: 24,
                ),
                selectedIcon: Image.asset(
                  'assets/images/navigation/navigationbar_port_color.png',
                  width: 24,
                  height: 24,
                ),
                label: 'port'.tr,
              ),
              NavigationDestination(
                icon: Image.asset(
                  'assets/images/navigation/navigationbar_services.png',
                  width: 24,
                  height: 24,
                ),
                selectedIcon: Image.asset(
                  'assets/images/navigation/navigationbar_services_color.png',
                  width: 24,
                  height: 24,
                ),
                label: 'services'.tr,
              ),
              NavigationDestination(
                icon: Image.asset(
                  'assets/images/navigation/navigationbar_message.png',
                  width: 24,
                  height: 24,
                ),
                selectedIcon: Image.asset(
                  'assets/images/navigation/navigationbar_message_color.png',
                  width: 24,
                  height: 24,
                ),
                label: 'message'.tr,
              ),
              NavigationDestination(
                icon: Image.asset(
                  'assets/images/navigation/navigationbar_setup.png',
                  width: 24,
                  height: 24,
                ),
                selectedIcon: Image.asset(
                  'assets/images/navigation/navigationbar_setup_color.png',
                  width: 24,
                  height: 24,
                ),
                label: 'setup'.tr,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
