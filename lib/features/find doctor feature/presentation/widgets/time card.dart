import 'package:flutter/material.dart';

import '../../../../../core/recourses/color manager/color manager.dart';
import '../../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../../core/recourses/value manger/value manager.dart';

class TimeCard extends StatelessWidget {
  TimeCard({this.text,this.time});
  String?time;
  String?text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration:
        BoxDecoration(
          border: Border.all(color: ColorManager.shadowColor,width: 2.5),
          borderRadius: BorderRadius.circular(AppSize.s20),

        ),
        height: 50,
        width: 105,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(time??"10:50",style: getRegularStyle(color: ColorManager.darkGray,),),
            const SizedBox(width: AppSize.s8,),
            Text(text??"AM",style: getRegularStyle(color: ColorManager.black),),
          ],
        ),
      ),
    );  }
}
