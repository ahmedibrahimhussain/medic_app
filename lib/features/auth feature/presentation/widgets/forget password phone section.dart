import 'package:flutter/material.dart';
import '../../../../core/recourses/color manager/color manager.dart';
import '../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../core/recourses/value manger/value manager.dart';
import '../../../../core/utils/custom navigation.dart';
import '../../../../core/widgets/custom button.dart';
import '../../../../core/widgets/custom text form field.dart';
import '../pages/otp form.dart';

class ForgetPasswordPhoneSection extends StatelessWidget {
  const ForgetPasswordPhoneSection({super.key,required this.controller,});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
        final GlobalKey<FormState> key = GlobalKey();

    return Column(
      children: [
        Form(
          key: key,
          child: CustomTextFormField(
                      controller: controller,
            labelText: 'Phone number',
            prefixIcon: Icons.phone,
            textInputType: TextInputType.number,
            validator: (value) {
              if (value!.length != 11) {
                return 'Invalid phone number';
              } else {
                return null;
              }
            },
          ),
        ),
        const SizedBox(height: AppSize.s30),
        CustomButton(
          child: Text(
            'Send OTP',
            style: getSemiBoldStyle(
              fontSize: AppSize.s16,
              color: ColorManager.white,
            ),
          ),
          onPressed: () {
            if(key.currentState!.validate()){
            CustomNavigation.authNavigation(OTPForm(phone: controller.text,),);

            }
          },
        ),
      ],
    );
  }
}
