import 'package:flutter/material.dart';
import 'package:medic_app/core/recourses/color%20manager/color%20manager.dart';
import 'package:medic_app/core/recourses/styles%20manger/styles%20manager.dart';
import 'package:medic_app/core/recourses/value%20manger/value%20manager.dart';
import 'package:medic_app/features/onboarding%20feature/presentation/pages/onboarding%20page.dart';
import 'package:medic_app/core/utils/constants.dart';
import 'package:medic_app/core/utils/custom%20navigation.dart';

import '../../../auth feature/presentation/pages/login page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late AnimationController logoController;
  late AnimationController titleController;
  late Animation<double> logoAnimation;
  late Animation<double> titleAnimation;

  @override
  void initState() {
    super.initState();
    initializeAnimation();
  }

  @override
  void dispose() {
    super.dispose();
    logoController.dispose();
    titleController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: logoAnimation,
              child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
                child: AspectRatio(
                  aspectRatio: 2/2,
                  child: Image.asset('assets/images/icon.png',fit: BoxFit.fill,),),
              ),
            ),
            const SizedBox(height: AppSize.s24),
            FadeTransition(
              opacity: titleAnimation,
              child: Text.rich(
                TextSpan(text: 'Medic', children: [
                  TextSpan(
                    text: ' App',
                    style: getBoldStyle(
                      fontSize: AppSize.s24,
                      color: ColorManager.seconderyColor,
                    ),
                  ),
                ]),
                style: getBoldStyle(
                  fontSize: AppSize.s30,
                  color: ColorManager.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void initializeAnimation() {
    logoController = AnimationController(
      vsync: this,
      duration: kAnimationDuration,
    );
    logoAnimation =
        CurvedAnimation(parent: logoController, curve: Curves.bounceInOut);
    titleController = AnimationController(
      vsync: this,
      duration: kAnimationDuration,
    );
    titleAnimation =
        CurvedAnimation(parent: titleController, curve: Curves.bounceInOut);
    logoController.forward().then(
          (_) => titleController.forward().then(
                (_) =>
                    CustomNavigation.splashNavigation(const OnboardingPage()),
              ),
        );
  }
}
