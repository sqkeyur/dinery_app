import 'package:dinery_app/view/on_boarding/on_boarding_controler.dart';
import 'package:get/get.dart';


class OnBoardingBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<OnBoardingController>(OnBoardingController());
  }
}
