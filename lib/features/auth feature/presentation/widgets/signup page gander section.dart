import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medic_app/core/recourses/color%20manager/color%20manager.dart';
import '../../../../core/recourses/value manger/value manager.dart';
import '../controller/auth controller.dart';

class SignupPageGanderSection extends StatelessWidget {
  const SignupPageGanderSection({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController controller = Get.put(AuthController());

    return Obx(
      () => Row(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: true,
                  groupValue: controller.isMale.value,
                  onChanged: (val) {
                    controller.isMale.value = !(controller.isMale.value);
                  },
                ),
                Icon(
                  Icons.male,
                  size: AppSize.s35,
                  color: controller.isMale.value
                      ? ColorManager.seconderyColor
                      : ColorManager.grey,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: false,
                  groupValue: controller.isMale.value,
                  onChanged: (val) {
                    controller.isMale.value = !(controller.isMale.value);
                  },
                ),
                Icon(
                  Icons.female,
                  size: AppSize.s35,
                  color: controller.isMale.value
                      ? ColorManager.grey
                      : ColorManager.seconderyColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
