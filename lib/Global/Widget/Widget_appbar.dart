import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../AppColors/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double toolbarHeight;

  CustomAppBar({required this.title, this.toolbarHeight = 100});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: SizedBox(
          width: 20,
          height: 20,
          child: Padding(
            padding: const EdgeInsets.all(23.0),
            child: Image.asset(
              "assets/images/arrow_back.png",
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      toolbarHeight: toolbarHeight,
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.app_primary_color,
              Color(0xFFC62B3E),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0),
            topRight: Radius.circular(0),
            bottomRight: Radius.circular(25),
            bottomLeft: Radius.circular(0),
          ),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'SukhumvitSet',
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight);
}
