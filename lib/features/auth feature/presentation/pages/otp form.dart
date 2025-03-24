import 'package:flutter/material.dart';

import '../../../../core/recourses/color manager/color manager.dart';
import '../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../core/recourses/value manger/value manager.dart';
import '../../../../core/utils/custom navigation.dart';
import '../../../../core/widgets/custom button.dart';
import '../../../homePage feature/presentation/pages/home  services.dart';
import '../widgets/otp field.dart';

class OTPForm extends StatelessWidget {
  const OTPForm({super.key,required this.phone,});
  final String phone;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppSize.s8,
            horizontal: AppSize.s24,
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
        ),
        backgroundColor: ColorManager.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSize.s24),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enter Verification Code',
                style: getBoldStyle(fontSize: AppSize.s24),
              ),
              const SizedBox(height: AppSize.s8),
              Text.rich(
                TextSpan(
                  text: 'Enter code that we have sent to your number ',
                  children: [
                    TextSpan(
                      text: '+201128678924',
                      style: getMediumStyle(
                        color: ColorManager.black,
                        fontSize: AppSize.s16,
                      ),
                    ),
                  ],
                ),
                style: getLightStyle(
                  fontSize: AppSize.s16,
                  color: ColorManager.grey,
                ),
              ),
              const SizedBox(height: AppSize.s35),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  OTPField(isLast: false),
                  OTPField(isLast: false),
                  OTPField(isLast: false),
                  OTPField(isLast: true),
                ],
              ),
              const SizedBox(height: AppSize.s40),
              CustomButton(
                        child: Text(
                          'Verify',
                          style: getSemiBoldStyle(color: ColorManager.white),
                        ),
                        onPressed: () {
                          CustomNavigation.authNavigation(HomeServices());
                        },
                      ),
              const SizedBox(height: AppSize.s24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(
                      text: 'Didn’t receive the code?  ',
                      children: [
                        TextSpan(
                          text: 'Resend',
                          style: getRegularStyle(
                            color: ColorManager.seconderyColor,
                            fontSize: AppSize.s18,
                          ),
                        ),
                      ],
                    ),
                    style: getLightStyle(fontSize: AppSize.s16),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
