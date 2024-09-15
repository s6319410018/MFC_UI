import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ConfirmCardInformationScreenController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final errors = <String, String?>{}.obs;
  final TextEditingController nametextEditingController =
      TextEditingController();
  final TextEditingController surnametextEditingController =
      TextEditingController();
  final TextEditingController dobtextEditingController =
      TextEditingController();
  final TextEditingController idNumbertextEditingController =
      TextEditingController();
  final TextEditingController laserCodetextEditingController =
      TextEditingController();
  final TextEditingController reasontextEditingController =
      TextEditingController();
  final RxString textValue = ''.obs;
  final RxString errorMessage = ''.obs;

  var timeSelector = '00/00/0000'.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    nametextEditingController.dispose();
    surnametextEditingController.dispose();
    dobtextEditingController.dispose();
    idNumbertextEditingController.dispose();
    laserCodetextEditingController.dispose();
    reasontextEditingController.dispose();
    super.onClose();
  }

  bool validateForm() {
    errors.clear();
    bool isValid = true;
    final name = nametextEditingController.text;
    final surname = surnametextEditingController.text;
    final dob = dobtextEditingController.text;
    final idNumber = idNumbertextEditingController.text;
    final laserCode = laserCodetextEditingController.text;
    final reason = reasontextEditingController.text;

    if (name.isEmpty) {
      errors['name'] = 'กรุณากรอกชื่อ';
      isValid = false;
    }
    if (surname.isEmpty) {
      errors['surname'] = 'กรุณากรอกนามสกุล';
      isValid = false;
    }
    if (dob.isEmpty) {
      errors['dob'] = 'กรุณาเลือกวันเดือนปีเกิด';
      isValid = false;
    }
    if (idNumber.isEmpty) {
      errors['idNumber'] = 'กรุณากรอกข้อมูลหมายเลขบัตประจำตัวประชาชน';
      isValid = false;
    }
    if (laserCode.isEmpty) {
      errors['laserCode'] = 'กรุณากรอก หมายเลข laser Code 12 หลัง';
      isValid = false;
    }
    if (reason.isEmpty) {
      errors['reason'] = 'กรุณากรอกเหตุผลที่ไม่สามารถทำการ dipchip';
      isValid = false;
    }
    return isValid;
  }
}
