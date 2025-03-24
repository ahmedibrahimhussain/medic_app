
import 'package:flutter/material.dart';

import '../recourses/color manager/color manager.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    this.textInputType = TextInputType.text,
    this.controller,
    this.validator,
    this.obscureText,
  });
  final String? hintText;
  final String? labelText;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? textInputType;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
          validator: validator,
          obscureText: obscureText ?? false,
          keyboardType: textInputType,
          decoration: InputDecoration(
            labelText: labelText,
            
            prefixIcon: prefixIcon == null ? null : Icon(prefixIcon,color: ColorManager.seconderyColor,),
            suffixIcon: suffixIcon,
            hintText: hintText,
            labelStyle: const TextStyle(color: ColorManager.grey,)
          ),
        );
  }
}
