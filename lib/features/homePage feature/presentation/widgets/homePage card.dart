import 'package:flutter/material.dart';

import '../../../../../core/recourses/color manager/color manager.dart';
import '../../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../../core/recourses/value manger/value manager.dart';
import 'default button.dart';
class HomePageCard extends StatelessWidget {
  HomePageCard({
    required this.image,
    required this.buttonText,
    required this.cardText,
  required this.onPressed
  });
  String? cardText;
  String? buttonText;
  String? image;
  Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(

        border: Border.all(color: ColorManager.white),
        borderRadius: BorderRadius.circular(AppSize.s20),
        color: const Color.fromRGBO(232, 243, 241, 1.0),
      ),
      padding: const EdgeInsets.all(AppSize.s8),
      child: Row(
        children: [
          SizedBox(
            height: 150,
            width: 100,
            child: Image.asset(image ?? ""),
          ),
          const SizedBox(
            width: AppSize.s20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardText ?? "",
                  maxLines: 5,
                  style: getMediumStyle(
                      color:  ColorManager.black, fontSize: AppSize.s18),
                ),
                const SizedBox(
                  height: AppSize.s26,
                ),
                DefaultButton(
                    width: 180,
                    text: buttonText ?? "",
                    color: ColorManager.seconderyColor,
                    onPressed: onPressed)
              ],
            ),
          )
        ],
      ),
    );
  }
}
