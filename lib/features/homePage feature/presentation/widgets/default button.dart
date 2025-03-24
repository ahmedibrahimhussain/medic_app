


import 'package:flutter/material.dart';

import '../../../../../core/recourses/color manager/color manager.dart';
import '../../../../../core/recourses/font manager/font manager.dart';
import '../../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../../core/recourses/value manger/value manager.dart';

class DefaultButton extends StatelessWidget {
  DefaultButton({
    this.icon,
    this.radius,
    required this.text,
     this.color,
    required this.onPressed,
    this.height,
    this.fontSize,
    this.width,
  });
  String? text;
  Color? color;
  double? radius;
  IconData? icon;
  double? width;
  double? height;
  Function()? onPressed;
  double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(radius ?? AppSize.s20)),
        color: ColorManager.seconderyColor,
      ),
      width: width,
      height: height,
      child: MaterialButton(
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: PaddingSize.p12),
          child: Text(
            text ?? "",
            style: getSemiBoldStyle(color: ColorManager.white,fontSize: fontSize??FontSizeManager.s18),
          ),
        ),
      ),
    );
  }
}
