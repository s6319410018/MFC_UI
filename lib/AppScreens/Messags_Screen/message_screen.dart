import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../AppColors/app_colors.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
    );
  }
}
