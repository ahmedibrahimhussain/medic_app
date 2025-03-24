import 'package:flutter/material.dart';

import '../../../../core/recourses/color manager/color manager.dart';
import '../../../../core/recourses/font manager/font manager.dart';
import '../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../core/recourses/value manger/value manager.dart';

class DayCard extends StatelessWidget {
  DayCard({this.dayName,this.dayNumber});
  String?dayName;
  String?dayNumber;

@override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration:
            BoxDecoration(
                border: Border.all(color: ColorManager.shadowColor,width: 2.5),
            borderRadius: BorderRadius.circular(AppSize.s20),

            ),
        padding: EdgeInsets.all(PaddingSize.p8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(dayName??"mon",style: getSemiBoldStyle(color: ColorManager.darkGray,fontSize: FontSizeManager.s22),),
            const SizedBox(height: AppSize.s8,),
            Text(dayNumber??"24",style: getSemiBoldStyle(color: ColorManager.black),),
          ],
        ),
      ),
    );
  }
}
