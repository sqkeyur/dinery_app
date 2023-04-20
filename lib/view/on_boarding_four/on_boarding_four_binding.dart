import 'package:dinery_app/view/on_boarding_four/on_boarding_four_controler.dart';
import 'package:get/get.dart';

class OnBoardingFourBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<OnBoardingFourController>(OnBoardingFourController());
  }
}
