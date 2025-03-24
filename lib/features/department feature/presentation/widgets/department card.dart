import 'package:flutter/material.dart';

import '../../../../core/recourses/color manager/color manager.dart';
import '../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../core/recourses/value manger/value manager.dart';

class DepartmentCard extends StatelessWidget {
  const DepartmentCard({super.key,required this.icon,required this.text,});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorManager.white,
          border: Border.all(color: ColorManager.lightBlueColor,width: 1.5),
          borderRadius: BorderRadius.circular(AppSize.s20),
          boxShadow: const [
            BoxShadow(blurRadius: 2,offset: Offset(0, 3),color: ColorManager.grey)
          ],),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Icon(
            icon,
            size: 40,
            color: ColorManager.seconderyColor,
          ),
          const SizedBox(height: AppSize.s12),
          Text(
            text,
            style: getRegularStyle(
                fontSize: AppSize.s26, color: ColorManager.seconderyColor),
                textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
