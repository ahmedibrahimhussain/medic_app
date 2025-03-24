import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  RxInt currentIndex = 0.obs;
  PageController pageController = PageController();

  List<String> onBoardingText = [
    'Consult only with a doctor you trust',
    'Find a lot of specialist doctors in one place',
    'Get connect our Online Consultation',
  ];

  List<Widget> images = <Widget>[
    Image.asset(
      'assets/images/test2.png',
      fit: BoxFit.fill,
    ),
       Image.asset(
      'assets/images/test3.png',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'assets/images/test4.png',
      fit: BoxFit.fill,
    ),
  ];
}
