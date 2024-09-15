import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:mfc/AppScreens/Services_Screen/munu_screen/ConfirmCardInformation/confirm_card_informationCtrl.dart';
import '../../../../AppColors/app_colors.dart';

class ConfirmCardInformationScreen extends StatefulWidget {
  ConfirmCardInformationScreen({super.key});

  @override
  _ConfirmCardInformationScreenState createState() =>
      _ConfirmCardInformationScreenState();
}

class _ConfirmCardInformationScreenState
    extends State<ConfirmCardInformationScreen> {
  final ScrollController _scrollController = ScrollController();
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 250, 250, 252),
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
      body: GetBuilder<ConfirmCardInformationScreenController>(
        builder: (controller) {
          return Obx(
            () => SingleChildScrollView(
              controller: _scrollController,
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 30),
                      Column(
                        children: [
                          const Row(
                            children: [
                              Text(
                                'ชื่อ (ภาษาไทย)',
                                style: const TextStyle(
                                  fontFamily: 'SukhumvitSet',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                '*',
                                style: const TextStyle(
                                  fontFamily: 'SukhumvitSet',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          _buildTextField(
                            controller: controller.nametextEditingController,
                            labelText: 'ชื่อ (ภาษาไทย)',
                            isRequired: true,
                            errorMessage: controller.errors['name'],
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Column(
                        children: [
                          const Row(
                            children: [
                              Text(
                                'นามสกุล (ภาษาไทย)',
                                style: const TextStyle(
                                  fontFamily: 'SukhumvitSet',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                '*',
                                style: const TextStyle(
                                  fontFamily: 'SukhumvitSet',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          _buildTextField(
                            controller: controller.surnametextEditingController,
                            labelText: 'นามสกุล (ภาษาไทย)',
                            isRequired: true,
                            errorMessage: controller.errors['surname'],
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Column(
                        children: [
                          const Row(
                            children: [
                              Text(
                                'วัน/เดือน/ปีเกิด',
                                style: const TextStyle(
                                  fontFamily: 'SukhumvitSet',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                '*',
                                style: const TextStyle(
                                  fontFamily: 'SukhumvitSet',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          _buildTextField(
                              controller: controller.dobtextEditingController,
                              labelText: '',
                              isRequired: true,
                              enableTextFormField: false,
                              errorMessage: controller.errors['dob'],
                              suffixIcon: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    controller.timeSelector.value,
                                    style: const TextStyle(
                                      fontFamily: 'SukhumvitSet',
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xFF9B9B9B),
                                    ),
                                  ),
                                  const SizedBox(width: 150),
                                  Image.asset(
                                    'assets/images/service/Shape.png',
                                    width: 30,
                                  ),
                                ],
                              )),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Column(
                        children: [
                          const Row(
                            children: [
                              Text(
                                'หมายเลขบัตรประจำตัวประชาชน',
                                style: const TextStyle(
                                  fontFamily: 'SukhumvitSet',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                '*',
                                style: const TextStyle(
                                  fontFamily: 'SukhumvitSet',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          _buildTextField(
                            controller:
                                controller.idNumbertextEditingController,
                            labelText: 'หมายเลขบัตรประจำตัวประชาชน',
                            isRequired: true,
                            errorMessage: controller.errors['idNumber'],
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Column(
                        children: [
                          const Row(
                            children: [
                              Text(
                                'หมายเลข Laser Code 12 หลัก',
                                style: const TextStyle(
                                  fontFamily: 'SukhumvitSet',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                '*',
                                style: const TextStyle(
                                  fontFamily: 'SukhumvitSet',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          _buildTextField(
                            controller:
                                controller.laserCodetextEditingController,
                            labelText: 'หมายเลข Laser Code 12 หลัก',
                            isRequired: true,
                            errorMessage: controller.errors['laserCode'],
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Column(
                        children: [
                          const Row(
                            children: [
                              Text(
                                'เหตุผลที่ไม่สามารถทำการ dipchip',
                                style: const TextStyle(
                                  fontFamily: 'SukhumvitSet',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                '*',
                                style: const TextStyle(
                                  fontFamily: 'SukhumvitSet',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          _buildTextField(
                            controller: controller.reasontextEditingController,
                            labelText: 'เหตุผลที่ไม่สามารถทำการ dipchip',
                            isRequired: true,
                            errorMessage: controller.errors['reason'],
                            height: 100,
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        height: 50,
                        width: 200,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(30),
                          onTap: () {
                            if (controller.validateForm()) {
                              _focusNode.unfocus();
                              FocusScope.of(context).unfocus();

                              _scrollController.animateTo(
                                0,
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeOut,
                              );
                              print("Form is valid");
                              // Handle successful validation
                            } else {
                              print("Form is invalid");
                              setState(
                                  () {}); // Trigger a rebuild to show error messages
                            }
                          },
                          child: Container(
                            height: Get.size.height,
                            width: Get.size.width * 0.6,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  AppColors.app_primary_color,
                                  Color(0xFFC62B3E),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                'ยืนยัน',
                                style: TextStyle(
                                  fontFamily: 'SukhumvitSet',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 200),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String labelText,
    bool isRequired = false,
    String? errorMessage,
    Widget? suffixIcon,
    double? width,
    double? height,
    bool enableTextFormField = true,
    int maxLines = 20,
    int minLines = 20,
  }) {
    Widget _buildTextFieldContent() {
      return TextFormField(
        controller: controller,
        enabled: enableTextFormField,
        maxLines: maxLines,
        minLines: minLines,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          labelStyle: const TextStyle(color: Colors.white),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          alignLabelWithHint: false,
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 0, color: Colors.white),
            borderRadius: BorderRadius.circular(5.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 0, color: Colors.white),
            borderRadius: BorderRadius.circular(5.0),
          ),
          filled: true,
          fillColor: Colors.white,
          hintText: labelText,
          hintStyle: const TextStyle(
            fontFamily: 'SukhumvitSet',
            fontWeight: FontWeight.w300,
            color: Color(0xFF9B9B9B),
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 5,
        ),
        Container(
          width: width ?? double.infinity,
          height: height ?? Get.size.height * 0.06,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5), // Ensure rounded corners
            child: enableTextFormField
                ? _buildTextFieldContent()
                : InkWell(
                    onTap: () {
                      print("XXXXXXXXXXXXX");
                    },
                    child: _buildTextFieldContent(),
                  ),
          ),
        ),
        if (errorMessage != null)
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              errorMessage,
              style: const TextStyle(
                color: Colors.red,
                fontFamily: 'SukhumvitSet',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
      ],
    );
  }
}
