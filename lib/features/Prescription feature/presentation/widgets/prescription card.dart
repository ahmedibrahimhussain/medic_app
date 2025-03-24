import 'package:flutter/material.dart';

import '../../../../core/recourses/color manager/color manager.dart';
import '../../../../core/recourses/font manager/font manager.dart';
import '../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../core/recourses/value manger/value manager.dart';
import 'part of prescription Card.dart';

class PrescriptionCard extends StatelessWidget {
  const PrescriptionCard({super.key, required this.medicineName,required this.medicineSize,required this.whenToTake,required this.duration,required this.description,this.startOn,});
  final String medicineName;
  final String?medicineSize;
  final String?whenToTake;
  final String?duration;
  final String?startOn;
  final String?description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(PaddingSize.p12),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: PaddingSize.p12),
        
        width: double.infinity,
         decoration: BoxDecoration(
          color: ColorManager.white,
          border: Border.all(color: ColorManager.lightBlueColor,width: 1.5),
          borderRadius: BorderRadius.circular(AppSize.s20),
          boxShadow: const [
            BoxShadow(blurRadius: 15,offset: Offset(3, 3),color: ColorManager.grey)
          ],),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
              medicineName,
                  style: getSemiBoldStyle(color: ColorManager.seconderyColor),
                ),
                const SizedBox(
                  width: AppSize.s8,
                ),
                Text(
                  "($medicineSize mg)",
                  style: getRegularStyle(
                      color: ColorManager.grey, fontSize: FontSizeManager.s18),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PartOfPrescriptionCard(
                  mainText: whenToTake??'',
                  headerText: ' when to take',
                ),

                PartOfPrescriptionCard(headerText: "Duration", mainText: duration??""),

                PartOfPrescriptionCard(headerText: "Start on", mainText: startOn??"")
              ],
            ),
            const SizedBox(height: AppSize.s12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              
              const Icon(Icons.star,color: ColorManager.amber,),
              SizedBox(width: AppSize.s4,),
              Text(description??"",style: getRegularStyle(fontSize: AppSize.s18),)
            ],)
          ],
        ),
      ),
    );
  }
}
