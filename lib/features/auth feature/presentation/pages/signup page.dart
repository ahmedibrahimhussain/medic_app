import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/recourses/color manager/color manager.dart';
import '../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../core/recourses/value manger/value manager.dart';
import '../../../../core/widgets/custom button.dart';
import '../../../../core/widgets/custom dialog.dart';
import '../../../../core/utils/custom navigation.dart';
import '../controller/auth controller.dart';
import '../widgets/auth page custom appbar.dart';
import '../widgets/signup page gander section.dart';
import '../widgets/signup page text form field section.dart';
import '../widgets/switch auth section.dart';
import '../widgets/terms of use row.dart';
import 'otp form.dart';



class SignupPage extends StatelessWidget {
        const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
                              final AuthController controller = Get.put(AuthController());

    return Scaffold(
      appBar: authPageCustomAppBar('Sign Up'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: PaddingSize.p24),
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SignupPageTextFormFieldSection(),
                  const SignupPageGanderSection(),
                  const SizedBox(height: AppSize.s16),
                  const TermsOfUseRow(),
                  const SizedBox(height: AppSize.s40),
                  
                  CustomButton(
                          onPressed: ()async {
                        if(controller.sigupKey.value.currentState!.validate()){
                          CustomNavigation.authNavigation(OTPForm(phone: controller.signupPhoneController.text));
                          await showCustomDialog(
                          context: context,
                          buttonText: 'Ok',
                          message: 'Success',
                          content: 'Your account has been successfully registered',
                          onPressed: () {
                            CustomNavigation.popNavigation();
                          },
                        );
                        }
                          },
                          child: Text(
                            'Sign up',
                            style: getSemiBoldStyle(
                                color: ColorManager.primary, fontSize: AppSize.s24,),
                          ),
                        ),
                  const SizedBox(height: AppSize.s24),
                  const SwitchAuthSection(isLogin: false),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
