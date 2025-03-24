import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/recourses/color manager/color manager.dart';
import '../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../core/recourses/value manger/value manager.dart';
import '../controller/auth controller.dart';
import '../widgets/forget password email section.dart';
import '../widgets/forget password phone section.dart';
import '../../../../core/widgets/custom toggle button.dart';


class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});
  @override
  Widget build(BuildContext context) {
      final AuthController controller = Get.put(AuthController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: PaddingSize.p24),
        child: Obx(() => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Forgot Your Password?',
              style: getBoldStyle(fontSize: AppSize.s24),
            ),
            const SizedBox(height: AppSize.s8),
            Text(
              'Enter your email or your phone number, we will send you confirmation code',
              style: getRegularStyle(
                fontSize: AppSize.s16,
                color: ColorManager.grey,
              ),
            ),
            const SizedBox(height: AppSize.s24),
             CustomToggleButton(leftValue: 'Email',rightValue: 'Phone',controller: controller),
            const SizedBox(height: AppSize.s24),
            controller.toggleBoolean.value
                ?  ForgetPasswordEmailSection(controller: controller.forgetPasswordEmailController)
                :  ForgetPasswordPhoneSection(controller: controller.forgetPasswordPhoneController),
          ],
        ),),
      ),
    );
  }
}
