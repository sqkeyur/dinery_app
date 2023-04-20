import 'package:dinery_app/utils/routes/routes_name.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(
      const Duration(seconds: 2),
      () => Get.offNamed(onBoardingRoutes),
    );
  }
}
