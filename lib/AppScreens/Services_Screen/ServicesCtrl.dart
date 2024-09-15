import 'package:get/get.dart';

class ServicesScreenController extends GetxController {
  final RxMap<String, String> cardData = <String, String>{
    "customer_authentication": "assets/images/service/image1.png",
    "account_status": "assets/images/service/image2.png",
    'smart_order': "assets/images/service/image3.png",
    "pending_allocation": "assets/images/service/image4.png",
    "transaction_history": "assets/images/service/image5.png",
    "regular_investment": "assets/images/service/image6.png",
    "fund_information": "assets/images/service/image7.png",
    "unit_value": "assets/images/service/image8.png",
    "recommended_funds": "assets/images/service/image9.png",
    "compare_funds": "assets/images/service/image10.png",
    "investment_simulation": "assets/images/service/image11.png",
    "favorite_funds": "assets/images/service/image12.png",
    "tracked_funds": "assets/images/service/image13.png",
    "fund_calendar": "assets/images/service/image14.png",
    "management_fees": "assets/images/service/image15.png",
    "incentive": "assets/images/service/image16.png",
  }.obs;

  bool isExiting = false;
}
