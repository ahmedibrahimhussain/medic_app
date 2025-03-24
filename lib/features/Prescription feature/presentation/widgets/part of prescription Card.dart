import 'package:flutter/material.dart';

import '../../../../../core/recourses/color manager/color manager.dart';
import '../../../../../core/recourses/font manager/font manager.dart';
import '../../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../../core/recourses/value manger/value manager.dart';

class PartOfPrescriptionCard extends StatelessWidget {
 const PartOfPrescriptionCard({super.key, required this.headerText,required this.mainText,});
final String? headerText;
final String? mainText;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.white,
          border: Border.all(color: ColorManager.lightBlueColor,width: 1.5),
          borderRadius: BorderRadius.circular(AppSize.s20),
          ),
        padding: const EdgeInsets.all(6),
        child: Column(

          children: [
            Text(
              headerText??"",
              style: getRegularStyle(
                  color: ColorManager.darkGray,
                  fontSize: FontSizeManager.s16),
            ),
            const SizedBox(
              height: AppSize.s8,
            ),
            Text(
              mainText??"",
              style: getRegularStyle(
                  color: ColorManager.black,
                  fontSize: FontSizeManager.s16,)
            ),
          ],
        ),
      ),
    );
  }
}
