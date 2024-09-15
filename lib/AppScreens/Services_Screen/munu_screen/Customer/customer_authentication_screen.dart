import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mfc/AppScreens/Services_Screen/components/Customcard_v2.dart';
import 'package:mfc/utils/logger/logger.dart';
import '../../../../AppColors/app_colors.dart';
import 'customer_authenticationCtrl.dart';

class CustomerAuthenticationScreen extends StatelessWidget {
  const CustomerAuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 250, 252),
      extendBodyBehindAppBar: false,
      extendBody: false,
      appBar: AppBar(
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
        toolbarHeight: 100,
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
        title: const Text(
          'การยืนยันตัวตน',
          style: TextStyle(
            fontFamily: 'SukhumvitSet',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: GetBuilder<CustomerAuthenticationController>(
        builder: (controller) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: List.generate(
                controller.cardData.length,
                (index) {
                  final entry = controller.cardData.entries.elementAt(index);
                  final title = entry.key;
                  final imagePath = entry.value;
                  CallLog.callLogError(entry);

                  String text;
                  if (index == 0) {
                    text = "${title.tr}\n${"mfc_wealth".tr}";
                  } else if (index == 1) {
                    text = "${title.tr}\n${"other_channels".tr}";
                  } else {
                    text =
                        "${title.tr}\n${"used_only_when_identity_verification_fails".tr}";
                  }

                  return Padding(
                    padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
                    child: CustomCardVersionTwo(
                      imagePath: imagePath,
                      text: text,
                      namerouter: title,
                      index: index,
                    ),
                  );
                },
              )..add(
                  SizedBox(
                    height: Get.size.height * 0.12,
                  ),
                ),
            ),
          );
        },
      ),
    );
  }
}
