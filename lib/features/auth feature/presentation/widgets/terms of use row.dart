import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/recourses/color manager/color manager.dart';
import '../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../core/recourses/value manger/value manager.dart';
import '../controller/auth controller.dart';
class TermsOfUseRow extends StatelessWidget {
  const TermsOfUseRow({super.key});

  @override
  Widget build(BuildContext context) {
            final AuthController controller = Get.put(AuthController());



    return Obx(() =>  Row(
      children: [
        Checkbox(
          value: controller.termsOfUse.value,
          onChanged: (newVal) {
            controller.termsOfUse.value  = !(controller.termsOfUse.value);
          },
        ),
        Expanded(
          child: Text.rich(
            TextSpan(
              text: 'I agree to the medidoc ',
              style: getRegularStyle(fontSize: AppSize.s16),
              children: [
                TextSpan(
                  text: 'Terms of Service ',
                  style: getRegularStyle(
                    color: ColorManager.seconderyColor,
                    fontSize: AppSize.s16,
                  ),
                ),
                const TextSpan(
                  text: 'and ',
                ),
                TextSpan(
                  text: 'Privacy Policy',
                  style: getRegularStyle(
                    color: ColorManager.seconderyColor,
                    fontSize: AppSize.s16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
    }
}
