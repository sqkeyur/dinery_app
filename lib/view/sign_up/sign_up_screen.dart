import 'package:dinery_app/res/common/app_text_field.dart';
import 'package:dinery_app/view/sign_up/sign_up_controler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUpScreen extends GetView<SignUpController> {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70, right: 230).r,
            child: Text(
              "Sign up",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24.sp),
            ),
          ),
          15.verticalSpace,
          Text(
            "\t Enter your details below to create an\n\t account",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, right: 240).r,
            child: Text(
              "Full name",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
            ),
          ),
          CustomTextField(
            controller: TextEditingController(),
            hintText: "Enter your full name",
            borderVisible: false,
          )
        ],
      ),
    );
  }
}
