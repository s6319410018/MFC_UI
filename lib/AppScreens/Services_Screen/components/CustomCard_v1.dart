import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class CustomCardVersionOne extends StatelessWidget {
  final String imagePath;
  final String namerouter;
  final String title;
  final int index;
  final Function(int) onTap;

  CustomCardVersionOne({
    required this.imagePath,
    required this.title,
    required this.index,
    required this.onTap,
    required this.namerouter,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        hoverColor: const Color.fromARGB(157, 158, 158, 158),
        onTap: () {
          Get.toNamed("/${namerouter}");
        },
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: Get.size.width * 0.01,
            horizontal: Get.size.width * 0.04,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 10),
              SizedBox(
                height: Get.size.height * 0.05,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                title.tr,
                style: const TextStyle(
                  fontFamily: 'SukhumvitSet',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
