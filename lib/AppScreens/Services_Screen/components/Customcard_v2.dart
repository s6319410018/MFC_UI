import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Custom Card Widget Class
class CustomCardVersionTwo extends StatelessWidget {
  final String imagePath;
  final String namerouter;
  final String text;
  final int index;

  const CustomCardVersionTwo({
    Key? key,
    required this.imagePath,
    required this.namerouter,
    required this.text,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Card(
        elevation: 3,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(5),
          hoverColor: const Color.fromARGB(157, 158, 158, 158),
          onTap: () {
            Get.toNamed("/${namerouter}");
          },
          child: Row(
            children: [
              SizedBox(
                height: Get.size.height * 0.05,
                width: Get.size.width * 0.05,
              ),
              Image.asset(
                imagePath,
                height: 30,
              ),
              SizedBox(
                height: Get.size.height * 0.05,
                width: Get.size.width * 0.05,
              ),
              Text(
                text,
                style: const TextStyle(
                  fontFamily: 'SukhumvitSet',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
      ),
    );
  }
}
