import 'package:dinery_app/res/common/app_button.dart';
import 'package:dinery_app/view/on_boarding_four/on_boarding_four_controler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../utils/routes/routes_name.dart';

class OnBoardingFourScreen extends GetView<OnBoardingFourController> {
  const OnBoardingFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          150.verticalSpace,
          Center(
              child: Image.asset(
            "assets/images/rafiki.png",
            height: 141.h,
            width: 212.h,
          )),
          45.verticalSpace,
          Text(
            "Let’s get Started!",
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w800,
            ),
          ),
          25.verticalSpace,
          Text(
            "Reserve a table, Pre-order your meals and\tmake payments Immediately without\nstress!",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          35.verticalSpace,
          AppButton(
            title: "Sign up",
            onPressed: () {
              Get.toNamed(signUpRoutes);
            },
          ),
          15.verticalSpace,
          AppButton(
            title: "Log In",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
