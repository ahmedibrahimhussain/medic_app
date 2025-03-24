import 'package:flutter/material.dart';

import '../../../../core/recourses/color manager/color manager.dart';
import '../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../core/recourses/value manger/value manager.dart';

class CategoryIcon extends StatelessWidget {
  const CategoryIcon({super.key, this.categoryName, this.icon});
  final IconData? icon;
  final String? categoryName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: PaddingSize.p8),
      child: Column(
        children: [
          Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSize.s20),
                color: ColorManager.textFormFieldColor,

              ),
              child: Icon(icon ?? Icons.medical_information, size: 40,color: ColorManager.lightBlueColor,)),
          const SizedBox(
            height: AppSize.s12,
          ),
          Text(
            categoryName ?? "",
            style:
                getRegularStyle(color: ColorManager.darkGray, fontSize: AppSize.s16),
          )
        ],
      ),
    );
  }
}
