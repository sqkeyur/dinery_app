import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  RxDouble? currentPositionIndex = 0.0.obs;

  CarouselController buttonCarouselController = CarouselController();

  final List<Map<String, dynamic>> items = [
    {
      'image': "assets/images/restaurant.png",
      'title': 'Find a Restaurant',
      'subtitle': 'Search from a wide range of restaurants\n where you can dine-in ',
    },
    {
      'image': "assets/images/reservation.png",
      'title': 'Make a Reservation',
      'subtitle': 'Reserve a table before hand and get \neverything prepared for you',
    },
    {
      'image': "assets/images/meals.png",
      'title': 'Pre-order Meals',
      'subtitle': 'Pre-order your meals and it would be \n ready by the time you get there',
    },
  ];
}
