import 'package:get/get.dart';

import 'splash_controler.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<SplashController>(SplashController());
  }
}
