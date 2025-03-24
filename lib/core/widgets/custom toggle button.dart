import 'package:flutter/material.dart';
import '../recourses/color manager/color manager.dart';
import '../recourses/styles manger/styles manager.dart';
import '../recourses/value manger/value manager.dart';

class CustomToggleButton extends StatelessWidget {
  const CustomToggleButton({
    super.key,
    required this.leftValue,
    required this.rightValue,
    required this.controller,
  });
  final controller;
  final String rightValue;
  final String leftValue;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.toggleBoolean.value = !(controller.toggleBoolean.value);
      },
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.primary,
          borderRadius: BorderRadius.circular(AppSize.s30),
        ),
        child: AnimatedAlign(
          alignment: controller.toggleBoolean.value
              ? Alignment.centerLeft
              : Alignment.centerRight,
          duration: const Duration(milliseconds: 500),
          child: Container(
            margin: const EdgeInsets.all(MarginSize.m12),
            height: 50,
            width: 180,
            decoration: BoxDecoration(
              color: ColorManager.white,
              borderRadius: BorderRadius.circular(AppSize.s22),
            ),
            alignment: Alignment.center,
            child: Text(
              controller.toggleBoolean.value ? leftValue : rightValue,
              style: getSemiBoldStyle(
                fontSize: AppSize.s16,
                color: ColorManager.seconderyColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
