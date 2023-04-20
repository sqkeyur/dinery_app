import 'package:carousel_slider/carousel_slider.dart';
import 'package:dinery_app/res/common/app_button.dart';
import 'package:dinery_app/utils/routes/routes_name.dart';
import 'package:dinery_app/view/on_boarding/on_boarding_controler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends GetView<OnBoardingController> {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 90, right: 30),
                child: Container(
                  height: 40.h,
                  width: 80.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFD5D3D2)),
                    borderRadius: BorderRadius.circular(10),
                    // color: Colors.amber
                  ),
                  child: const Center(
                      child: Text(
                    "Skip",
                    style: TextStyle(color: Color(0xFFBA4723), fontSize: 16, fontWeight: FontWeight.w600),
                  )),
                ),
              ),
            ],
          ),
          SizedBox(height: 60.h),
          CarouselSlider.builder(
            itemCount: controller.items.length,
            carouselController: controller.buttonCarouselController,
            options: CarouselOptions(
              scrollPhysics: const BouncingScrollPhysics(),
              autoPlay: false,
              reverse: false,
              viewportFraction: 1.0,
              height: 300.h,
              enlargeCenterPage: false,
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) {
                controller.currentPositionIndex!.value = index.toDouble();
              },
            ),
            itemBuilder: (context, i, id) {
              return Column(
                children: [
                  Image.asset(
                    controller.items[i]['image'],
                    width: 240.w,
                    height: 140.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10, top: 20).r,
                    child: Text(
                      controller.items[i]['title'],
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Text(
                    controller.items[i]['subtitle'],
                    style: TextStyle(
                      fontSize: 17.5.sp,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              controller.items.length,
              (index) => Obx(() {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  width: 20,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: controller.currentPositionIndex!.value.round() == index ? const Color(0xFFBA4723) : Colors.grey,
                  ),
                );
              }),
            ),
          ),
          15.verticalSpace,
          AppButton(
            title: "Next",
            onPressed: () {
              if (controller.currentPositionIndex!.value != 2) {
                controller.buttonCarouselController.nextPage();
              } else {
                Get.toNamed(onBoardingFourRoutes);
              }
            },
          ),
        ],
      ),
    );
  }
}
