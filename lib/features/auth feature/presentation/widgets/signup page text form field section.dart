import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/recourses/color manager/color manager.dart';
import '../../../../core/recourses/value manger/value manager.dart';
import '../../../../core/widgets/custom text form field.dart';
import '../controller/auth controller.dart';

class SignupPageTextFormFieldSection extends StatelessWidget {
  const SignupPageTextFormFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController controller = Get.put(AuthController());

    return Obx(
      () => Form(
        key: controller.sigupKey.value,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: CustomTextFormField(
                    hintText: 'First name',
                    prefixIcon: Icons.person,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please write your name';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                const SizedBox(width: AppSize.s14),
                Expanded(
                  child: CustomTextFormField(
                    hintText: 'Last name',
                    prefixIcon: Icons.family_restroom,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please write your last name';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSize.s30),
            CustomTextFormField(
              hintText: 'ُEmail',
              prefixIcon: Icons.alternate_email_rounded,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (!(value!.contains('@') &&
                    value.contains('.') &&
                    value.length > 6)) {
                  return 'Incorrect Email format';
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: AppSize.s30),
            CustomTextFormField(
              controller: controller.signupPhoneController,
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
              controller: controller.signupPasswordController,
              hintText: 'Password',
              prefixIcon: Icons.password,
              suffixIcon: IconButton(
                icon: Icon(
                  controller.signupPasswordObscure.value
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: ColorManager.seconderyColor,
                ),
                onPressed: () {
                  controller.signupPasswordObscure.value =
                      !(controller.signupPasswordObscure.value);
                },
              ),
              textInputType: TextInputType.visiblePassword,
              obscureText: controller.signupPasswordObscure.value,
              validator: (value) {
                if (value!.length < 6) {
                  return 'Password is too short';
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: AppSize.s30),
            CustomTextFormField(
              hintText: 'Re-write password',
              suffixIcon: IconButton(
                icon: Icon(
                  controller.signupRewritePasswordObscure.value
                      ? Icons.visibility
                      : Icons.visibility_off,
                  color: ColorManager.seconderyColor,
                ),
                onPressed: () {
                  controller.signupRewritePasswordObscure.value =
                      !(controller.signupRewritePasswordObscure.value);
                },
              ),
              prefixIcon: Icons.password,
              textInputType: TextInputType.visiblePassword,
              obscureText: controller.signupRewritePasswordObscure.value,
              validator: (value) {
                if (controller.signupRewritePasswordController.text !=
                    controller.signupPasswordController.text) {
                  return 'Error, Re-wirte password again!';
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(height: AppSize.s30),
          ],
        ),
      ),
    );
  }
}
