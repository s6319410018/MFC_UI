import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../AppColors/app_colors.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

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
        ],
      ),
    );
  }
}
