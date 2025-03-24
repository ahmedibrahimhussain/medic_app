import 'package:flutter/material.dart';

import '../../../../core/recourses/color manager/color manager.dart';
import '../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../core/recourses/value manger/value manager.dart';

class DoctorCard extends StatelessWidget {
  DoctorCard({this.image,this.department,this.doctorName,this.rate,});
  String? doctorName;
  String? department;
  String? image;
  String? rate;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: PaddingSize.p8,bottom: PaddingSize.p8),
      child: Container(
        padding: const EdgeInsets.all(PaddingSize.p12),
        height: 130,
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorManager.white,
          border: Border.all(color: ColorManager.lightBlueColor,width: 1.5),
          borderRadius: BorderRadius.circular(AppSize.s20),
          boxShadow: const [
            BoxShadow(blurRadius: 1,offset: Offset(0, 2),color: ColorManager.grey)
          ],),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(image ?? "",)),
                  borderRadius: BorderRadius.circular(AppSize.s20),),
                height: 100,
                width: 100,

              ),

            const SizedBox(
              width: AppSize.s12,
            ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Text(
                  doctorName??"Dr. Maria Elena",
                  style: getRegularStyle(),
                )),
            const SizedBox(
              height: AppSize.s12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Text(
                department??"Psychologist",
                style: const TextStyle(color: ColorManager.grey),
              ),
            ),
            const SizedBox(
              height: AppSize.s12,
            ),
            Row(
              children:  [
                const Icon(Icons.star,color: ColorManager.amber,),
                SizedBox(width: AppSize.s4),
                Text(
                  rate??"4.5",
                  style: const TextStyle(color: ColorManager.darkGray, fontSize: 16),
                )
              ],
            )
          ],)
          ],
        ),
      ),
    );
  }
}
