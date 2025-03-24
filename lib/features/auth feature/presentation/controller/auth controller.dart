import 'package:get/get.dart';
import 'package:flutter/material.dart';


class AuthController extends GetxController{
      TextEditingController signupPasswordController = TextEditingController();
      TextEditingController signupRewritePasswordController = TextEditingController();
      TextEditingController forgetPasswordEmailController = TextEditingController();
      TextEditingController forgetPasswordPhoneController = TextEditingController();
      TextEditingController signupPhoneController = TextEditingController();

  Rx<GlobalKey<FormState>> loginKey = GlobalKey<FormState>().obs;
  Rx<GlobalKey<FormState>> sigupKey = GlobalKey<FormState>().obs;
  RxBool loginObscure = true.obs;
  RxBool signupPasswordObscure = true.obs;
  RxBool signupRewritePasswordObscure = true.obs;
  RxBool isMale = true.obs;
  RxBool termsOfUse = false.obs;
  RxBool toggleBoolean = false.obs;

  
}