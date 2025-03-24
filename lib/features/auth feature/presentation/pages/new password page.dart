import 'package:flutter/material.dart';

import '../../../../core/recourses/color manager/color manager.dart';
import '../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../core/recourses/value manger/value manager.dart';
import '../../../../core/utils/custom navigation.dart';
import '../../../../core/widgets/custom button.dart';
import '../../../../core/widgets/custom text form field.dart';
import '../../../homePage feature/presentation/pages/home  services.dart';

class NewPasswordPage extends StatelessWidget {
  const NewPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController passwordController = TextEditingController();
    TextEditingController newPasswordController = TextEditingController();
        final GlobalKey<FormState> key = GlobalKey();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: PaddingSize.p24),
        child: Form(
          key: key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create New Password',
                style: getBoldStyle(fontSize: AppSize.s24),
              ),
              const SizedBox(height: AppSize.s8),
              Text(
                'Create New Password',
                style: getRegularStyle(
                  fontSize: AppSize.s16,
                  color: ColorManager.grey,
                ),
              ),
              const SizedBox(height: AppSize.s24),
              CustomTextFormField(
                labelText: 'Password',
                controller: passwordController,
                prefixIcon: Icons.password,
                //!suffixIcon: Icons.visibility,
                textInputType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value!.length < 6) {
                    return 'Password is too short';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: AppSize.s16),
              CustomTextFormField(
                controller: newPasswordController,
                labelText: 'Re-write Password',
                prefixIcon: Icons.password,
                //!suffixIcon: Icons.visibility,
                textInputType: TextInputType.visiblePassword,
                validator: (value) {
                  if (newPasswordController.text != passwordController.text) {
                    return 'Error, Re-wirte password again!';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: AppSize.s24),
              CustomButton(
                child: Text(
                  'Create Password',
                  style: getSemiBoldStyle(
                    fontSize: AppSize.s16,
                    color: ColorManager.white,
                  ),
                ),
                onPressed: () {
                   if(key.currentState!.validate()){
              CustomNavigation.authNavigation(HomeServices(),);
        
              }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
