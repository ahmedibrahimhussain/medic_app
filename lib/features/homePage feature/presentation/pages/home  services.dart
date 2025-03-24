import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import '../../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../../core/recourses/value manger/value manager.dart';
import '../../../../core/recourses/color manager/color manager.dart';
import '../maneger/home services controller.dart';
import '../widgets/default BottomNavBar.dart';


class HomeServices extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   return GetX<HomeServicesController>(
     init: HomeServicesController(),
     builder: (controller) {
      return Scaffold(
        body: controller.screens[controller.currentIndex.value],
        appBar: AppBar(
          title: Text(
            controller.appBarTitleList[controller.currentIndex.value],
            style:
            getSemiBoldStyle(color:ColorManager.black,fontSize: AppSize.s26),
          ),
         // leading:IconButton(onPressed: (){Get.back();}, icon: const Icon(CupertinoIcons.back)),
        //  actions: [IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.bell))],
        ),
        bottomNavigationBar: DefaultBottomNavBar(
          
          onTap: (index) {
            controller.currentIndex.value = index!;
          },
          currentIndex: controller.currentIndex.value,
          iconOfItem1: Icons.home,
          iconOfItem2: Icons.file_copy_sharp,
          iconOfItem3: Icons.category_outlined,
          textOfItem1: "Home",
          textOfItem2: "Appointment",
          textOfItem3: "Department",
          iconOfItem4: Icons.list,
          iconOfItem5: Icons.person,
          textOfItem4: 'Prescription',
          textOfItem5: 'Profile',
        ),
      );
    },);
  }
}
