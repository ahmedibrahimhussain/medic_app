import 'package:flutter/cupertino.dart';

import '../../../../../core/recourses/color manager/color manager.dart';
import '../../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../../core/recourses/value manger/value manager.dart';

class ProfileRow extends StatelessWidget {
  ProfileRow({required this.icon, required this.text,required this.onTap});
IconData?icon;
String? text;
Function()?onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: double.infinity,
        height: 70,

        child: Padding(
          padding: const EdgeInsets.all(PaddingSize.p20),
          child: Row(children: [
            Icon(icon??CupertinoIcons.profile_circled,color: ColorManager.black,size: AppSize.s30,),
            const SizedBox(width: AppSize.s20,),
            Text(text??"",style: getMediumStyle(color: ColorManager.black),),
            const Spacer(),
             const Icon(CupertinoIcons.chevron_forward,color: ColorManager.black,)

          ],),
        ),
      ),
    );
  }
}
