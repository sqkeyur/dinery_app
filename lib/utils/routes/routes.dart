import 'package:dinery_app/utils/routes/routes_name.dart';
import 'package:dinery_app/view/on_boarding/on_boarding_binding.dart';
import 'package:dinery_app/view/on_boarding/on_boarding_screen.dart';
import 'package:dinery_app/view/splash/splash_binding.dart';
import 'package:dinery_app/view/splash/splash_screen.dart';
import 'package:get/get.dart';

import '../../view/on_boarding_four/on_boarding_four_binding.dart';
import '../../view/on_boarding_four/on_boarding_four_screen.dart';
import '../../view/sign_up/sign_up_binding.dart';
import '../../view/sign_up/sign_up_screen.dart';

List<GetPage> page = [
  GetPage(name: splashRoutes, page: () => const SplashScreen(), binding: SplashBinding()),
  GetPage(name: onBoardingRoutes, page: () => const OnBoardingScreen(), binding: OnBoardingBinding()),
  GetPage(name: onBoardingFourRoutes, page: () => const OnBoardingFourScreen(), binding: OnBoardingFourBinding()),
  GetPage(name: signUpRoutes, page: () => const SignUpScreen(), binding: SignUpBinding()),
];
