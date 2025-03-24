import 'package:flutter/material.dart';
import '../../../../core/recourses/color manager/color manager.dart';
import '../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../core/recourses/value manger/value manager.dart';
import '../../../../core/utils/custom navigation.dart';
import '../../../../core/widgets/custom button.dart';
import '../../../../core/widgets/custom text form field.dart';
import '../pages/new password page.dart';

class ForgetPasswordEmailSection extends StatelessWidget {
  const ForgetPasswordEmailSection({super.key,required this.controller,});
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
            labelText: 'Email',
            prefixIcon: Icons.alternate_email,
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
        ),
        const SizedBox(height: AppSize.s30),
        CustomButton(
          child: Text(
            'Send verification Email',
            style: getSemiBoldStyle(
              fontSize: AppSize.s16,
              color: ColorManager.white,
            ),
          ),
          onPressed: () {
            if(key.currentState!.validate()){
            CustomNavigation.authNavigation(const NewPasswordPage(),);

            }
          },
        ),
      ],
    );
  }
}
