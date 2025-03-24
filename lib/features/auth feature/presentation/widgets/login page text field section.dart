import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/recourses/color manager/color manager.dart';
import '../../../../core/recourses/value manger/value manager.dart';
import '../../../../core/widgets/custom text form field.dart';
import '../controller/auth controller.dart';

class LoginPageTextFieldSection extends StatelessWidget {
  const LoginPageTextFieldSection({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final AuthController controller = Get.put(AuthController());

    return Obx(
      () => Form(
        key: controller.loginKey.value,
        child: Column(
          children: [
            CustomTextFormField(
              hintText: 'Phone',
              prefixIcon: Icons.phone,
              textInputType: TextInputType.phone,
              validator: (value) {
                if (value!.length != 11) {
                  return 'Invalid phone number';
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: AppSize.s30),
            CustomTextFormField(
              hintText: 'password',
              suffixIcon: IconButton(
                icon: Icon(
                  controller.loginObscure.value
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: ColorManager.seconderyColor,
                ),
                onPressed: () {
                  controller.loginObscure.value = !(controller.loginObscure.value);
                },
              ),
              prefixIcon: Icons.password,
              textInputType: TextInputType.visiblePassword,
              obscureText: controller.loginObscure.value,
              validator: (value) {
                if (value!.length < 6) {
                  return 'Password is too short';
                } else {
                  return null;
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
