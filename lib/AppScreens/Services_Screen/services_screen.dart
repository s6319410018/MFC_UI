import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../AppColors/app_colors.dart';
import 'package:mfc/Appscreens/Services_Screen/ServicesCtrl.dart';

import '../../Global/Widget/Widget_background.dart';
import 'components/CustomCard_v1.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final canPop = customLogic();
        if (!canPop) {
          Get.snackbar(
            'Attention',
            'Back navigation is disabled on this screen.',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
        }
        return canPop;
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: Container(
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
            child: AppBar(
              leading: null,
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Container(
                height: kToolbarHeight,
                alignment: Alignment.bottomCenter,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'services'.tr,
                    style: const TextStyle(
                      fontFamily: 'SukhumvitSet',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          ),
        ),
        body: GetBuilder<ServicesScreenController>(
          builder: (controller) {
            return GradientContainer(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    ...List.generate(
                      (controller.cardData.length / 2).ceil(), // Number of rows
                      (rowIndex) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            2, // Number of columns
                            (columnIndex) {
                              final index = rowIndex * 2 + columnIndex;
                              if (index < controller.cardData.length) {
                                final entry = controller.cardData.entries
                                    .elementAt(index);
                                final title = entry.key;
                                final imagePath = entry.value;

                                // Prepare text based on index
                                String text_title = title.tr;
                                if (index == 5) {
                                  text_title = "$text_title\n(DCA)";
                                }

                                return Container(
                                  height: Get.size.height * 0.14,
                                  width: Get.size.width * 0.45,
                                  margin: const EdgeInsets.all(1.0),
                                  child: CustomCardVersionOne(
                                    namerouter: title,
                                    imagePath: imagePath,
                                    title: text_title,
                                    index: index,
                                    onTap: (index) {
                                      print('Card tapped with index: $index');
                                    },
                                  ),
                                );
                              } else {
                                return SizedBox(
                                  height: Get.size.height *
                                      0.13, // Match card height
                                );
                              }
                            },
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: Get.size.height * 0.12, // Extra space at the end
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  bool customLogic() {
    // Implement your custom logic for enabling/disabling pop
    return false; // Default to not allowing pop
  }
}
