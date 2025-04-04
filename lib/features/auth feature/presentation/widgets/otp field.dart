import 'package:flutter/material.dart';
import 'package:medic_app/core/recourses/value%20manger/value%20manager.dart';

import '../../../../core/recourses/color manager/color manager.dart';

class OTPField extends StatelessWidget {
  const OTPField({
    super.key,
    required this.isLast,
  });
  final bool isLast;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.13,
      child: TextFormField(
        maxLength: 1,
        autofocus: true,
        onSaved: (pin1) {},
        onChanged: (value) {
          if (value.length == 1) {
            if (isLast)
              FocusScope.of(context).unfocus();
            else
              FocusScope.of(context).nextFocus();
          }
        },
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          counterText: '',
          fillColor: ColorManager.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(AppSize.s14),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: ColorManager.seconderyColor,
            ),
          ),
        ),
        validator: (value) {
          if (value!.length != 1) {
            return "This field can't be embty";
          } else {
            return null;
          }
        },
      ),
    );
  }
}
