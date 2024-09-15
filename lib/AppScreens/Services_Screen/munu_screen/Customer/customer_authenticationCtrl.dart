import 'package:get/get.dart';

class CustomerAuthenticationController extends GetxController {
  final RxMap<String, String> cardData = <String, String>{
    "for_customer1": "assets/images/service/image24.png",
    "for_customer2": "assets/images/service/image25.png",
    'paper_channels': "assets/images/service/image26.png",
  }.obs;

  var loading = false.obs;
}
