import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/recourses/color manager/color manager.dart';
import '../../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../../core/recourses/value manger/value manager.dart';
import '../../../../core/recourses/image manager/image manager.dart';
import '../../../find doctor feature/presentation/pages/doctor detail view.dart';
import '../widgets/doctor card.dart';

class TopDoctorsView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Top Doctor",
          style:
          getSemiBoldStyle(color:ColorManager.black,fontSize: AppSize.s26),
        ),
        leading:IconButton(onPressed: (){Get.back();}, icon: const Icon(CupertinoIcons.back)),
      ),
      body:Padding(
        padding: const EdgeInsets.all(PaddingSize.p20),
        child: ListView.builder(itemBuilder: (context, index) {
          return GestureDetector(onTap:(){Get.to(DoctorDetailView());},child: DoctorCard(image: ImageManager.doctor1Image,));
        }, itemCount: 50),
      ),
    );
  }

}
