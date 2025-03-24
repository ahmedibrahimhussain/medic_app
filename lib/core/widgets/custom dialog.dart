import 'package:flutter/material.dart';

import '../recourses/color manager/color manager.dart';
import '../recourses/styles manger/styles manager.dart';
import '../recourses/value manger/value manager.dart';
import 'custom button.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    super.key,
    required this.buttonText,
    required this.content,
    required this.message,
    required this.onPressed,
  });
  final String buttonText;
  final String message;
  final String content;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const CircleAvatar(
          backgroundColor: Color.fromARGB(255, 232, 238, 253),
          radius: 60,
          child: Icon(
            Icons.done,
            color: ColorManager.seconderyColor,
            size: 60,
          ),
        ),
        const SizedBox(height: AppSize.s40),
        Text(
          message,
          style: getBoldStyle(
            fontSize: AppSize.s20,
          ),
        ),
        const SizedBox(height: AppSize.s8),
        Text(
          content,
          style: getRegularStyle(
            fontSize: AppSize.s16,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppSize.s24),
        CustomButton(
                  onPressed: onPressed,
                  child: Text(
                    buttonText,
                    style: getSemiBoldStyle(
                      color: ColorManager.primary,
                      fontSize: AppSize.s24,
                    ),
                  ),
                ),
      ],
    );
  }
}

showCustomDialog({
  required BuildContext context,
  required String buttonText,
  required String message,
  required String content,
  required Function() onPressed,
}) async {
  await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: CustomDialog(
            buttonText: buttonText,
            content: content,
            message: message,
            onPressed: onPressed,
          ),
        );
      });
}
