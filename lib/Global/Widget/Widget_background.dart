import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../AppColors/app_colors.dart';

class GradientContainer extends StatelessWidget {
  final Widget child;

  const GradientContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.size.width,
      height: Get.size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.app_primary_color,
            AppColors.app_secondary_color,
          ],
          tileMode: TileMode.clamp,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: child,
    );
  }
}
