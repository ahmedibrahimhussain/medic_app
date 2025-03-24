import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/recourses/color manager/color manager.dart';
import '../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../core/recourses/value manger/value manager.dart';
import '../../../../core/utils/custom navigation.dart';
import '../../../../core/widgets/custom button.dart';
import '../../../../core/widgets/custom dialog.dart';
import '../../../../core/widgets/custom text form field.dart';
import '../../../homePage feature/presentation/pages/home  services.dart';
import '../controller/auth controller.dart';
import '../widgets/auth page custom appbar.dart';
import '../widgets/login page text field section.dart';
import '../widgets/switch auth section.dart';
import 'forget password.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
       final AuthController controller = Get.put(AuthController());

    return Scaffold(
      appBar: authPageCustomAppBar('Login'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: PaddingSize.p24),
        child: Center(
          child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
        
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 const LoginPageTextFieldSection(),
                const SizedBox(height: AppSize.s8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        CustomNavigation.authNavigation(
                          ForgetPassword(),
                        );
                      },
                      child: TextButton(
                        child: Text(
                        'Forgot Password?',
                        style: getMediumStyle(
                          fontSize: AppSize.s14,
                          color: ColorManager.seconderyColor,
                        ),
                      ),onPressed: (){
                        CustomNavigation.authNavigation(const ForgetPassword());
                      },),
                    ),
                  ],
                ),
                const SizedBox(height: AppSize.s40),
                CustomButton(
                  onPressed: () async {
                    if(controller.loginKey.value.currentState!.validate()){
                      
                      CustomNavigation.authNavigation(HomeServices());
                      await showCustomDialog(
                      context: context,
                      buttonText: 'Ok',
                      message: 'Yeay! Welcome Back',
                      content: 'Once again you login successfully into medic app',
                      onPressed: () {
                        CustomNavigation.popNavigation();
                      },
                    );
                    }
                  },
                  child: Text(
                    'Login',
                    style: getSemiBoldStyle(
                      color: ColorManager.primary,
                      fontSize: AppSize.s24,
                    ),
                  ),
                ),
                const SizedBox(height: AppSize.s24),
                const SwitchAuthSection(isLogin: true),
              ],
            ),
          ),
        ),
      ),
         );
  }
}
