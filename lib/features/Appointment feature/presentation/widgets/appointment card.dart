import 'package:flutter/material.dart';

import '../../../../core/recourses/color manager/color manager.dart';
import '../../../../core/recourses/image manager/image manager.dart';
import '../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../core/recourses/value manger/value manager.dart';

class AppointmentCard extends StatelessWidget {
  AppointmentCard({
    this.image,
    this.department,
    this.doctorName,
    this.day,
    this.icon,
    this.onTap,
  });
  String? doctorName;
  String? department;
  String? image;
  String? day;
  IconData? icon;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding:
            const EdgeInsets.only(top: PaddingSize.p8, bottom: PaddingSize.p8),
        child: Container(
          padding: const EdgeInsets.all(PaddingSize.p12),
          height: 130,
          width: double.infinity,
         decoration: BoxDecoration(
          color: ColorManager.white,
          border: Border.all(color: ColorManager.lightBlueColor,width: 1.5),
          borderRadius: BorderRadius.circular(AppSize.s20),
          boxShadow: const [
            BoxShadow(blurRadius: 2,offset: Offset(0, 3),color: ColorManager.grey)
          ],),
          child: Row(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                            image ?? ImageManager.doctor1Image,
                          )),
                          borderRadius: BorderRadius.circular(AppSize.s20),
                        ),
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
                                doctorName ?? "Dr. Maria Elena",
                                style: getRegularStyle(),
                              )),
                          const SizedBox(
                            height: AppSize.s12,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              department ?? "Psychologist",
                              style: const TextStyle(color: ColorManager.grey),
                            ),
                          ),
                          const SizedBox(
                            height: AppSize.s12,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              day ?? "Wednesday, Jun 23, 2021 | 10:00 AM",
                              style: const TextStyle(
                                  color: ColorManager.darkGray, fontSize: 13),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                radius: AppSize.s22,
                backgroundColor: ColorManager.darkGray,
                child: Icon(icon ?? Icons.wifi_calling_3),
              )
            ],
          ),
        ),
      ),
    );
  }
}
