import 'package:flutter/material.dart';
import 'package:medic_app/core/utils/custom%20navigation.dart';
import 'package:medic_app/features/auth%20feature/presentation/pages/login%20page.dart';
import 'package:medic_app/features/auth%20feature/presentation/pages/signup%20page.dart';
import '../../../../core/recourses/color manager/color manager.dart';
import '../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../core/recourses/value manger/value manager.dart';

class SwitchAuthSection extends StatelessWidget {
  const SwitchAuthSection({super.key,required this.isLogin,});
  final bool isLogin;
  @override
  Widget build(BuildContext context) {

   return  GestureDetector(
    onTap: () {
      if(isLogin)
        CustomNavigation.authNavigation(SignupPage());
      else
        CustomNavigation.authNavigation(LoginPage());
    },
     child: Text.rich(
                TextSpan(
                  text: isLogin? 'Don’t have an account? ':'Already have an account? ',
                  style: getRegularStyle(fontSize: AppSize.s16),
                  children: [
                    TextSpan(
                      text: isLogin? 'Sign Up':'Login',
                      style: getRegularStyle(
                        color: ColorManager.seconderyColor,
                        fontSize: AppSize.s16,
                        
                      ),
   
                    ),
                  ],
                ),
              ),
   );
  }
}