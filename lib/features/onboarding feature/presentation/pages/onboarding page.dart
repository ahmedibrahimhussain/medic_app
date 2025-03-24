import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medic_app/core/recourses/color%20manager/color%20manager.dart';
import 'package:medic_app/core/recourses/styles%20manger/styles%20manager.dart';
import 'package:medic_app/core/recourses/value%20manger/value%20manager.dart';
import 'package:medic_app/features/auth%20feature/presentation/pages/login%20page.dart';
import 'package:medic_app/features/onboarding%20feature/presentation/controller/onboarding%20controller.dart';
import 'package:medic_app/core/utils/constants.dart';
import 'package:medic_app/core/utils/custom%20navigation.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    OnboardingController controller = Get.put(OnboardingController());
    return Obx(
      () => Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      CustomNavigation.authNavigation(const LoginPage());
                    },
                    child: const Text('Skip'),
                  ),
                ],
              ),
              Expanded(
                child: PageView(
                  controller: controller.pageController,
                  onPageChanged: (value) {
                    controller.currentIndex.value = value;
                  },
                  physics: const BouncingScrollPhysics(),
                  children: controller.images,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: MarginSize.m26),
                padding: const EdgeInsets.symmetric(
                  horizontal: PaddingSize.p16,
                ),
                height: MediaQuery.of(context).size.height * 0.24,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F7FF),
                  borderRadius: BorderRadius.circular(AppSize.s22),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: AppSize.s40),
                    Text(
                      controller.onBoardingText[controller.currentIndex.value],
                      style: getBoldStyle(fontSize: AppSize.s22),
                    ),
                    const SizedBox(height: AppSize.s18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SmoothPageIndicator(
                          controller: controller.pageController,
                          count: 3,
                          effect: const WormEffect(
                            strokeWidth: 2,
                            activeDotColor: ColorManager.seconderyColor,
                            dotColor: ColorManager.grey,
                            dotHeight: AppSize.s8,
                            dotWidth: AppSize.s16,
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            if (controller.currentIndex.value == 2) {
                              CustomNavigation.authNavigation(const LoginPage());
                            } else {
                              controller.pageController.animateToPage(
                                (controller.pageController.page!.toInt() + 1),
                                duration: kTransitionDuration,
                                curve: Curves.fastLinearToSlowEaseIn,
                              );
                            }
                          },
                          child: Icon(controller.currentIndex.value == 2
                              ? Icons.login
                              : Icons.arrow_forward_ios),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSize.s35),
            ],
          ),
        ),
      ),
    );
  }
}
