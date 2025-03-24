import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../core/recourses/color manager/color manager.dart';
import '../../../../../core/recourses/image manager/image manager.dart';
import '../../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../../core/recourses/value manger/value manager.dart';
import '../../../homePage feature/presentation/widgets/default button.dart';
import '../../../homePage feature/presentation/widgets/doctor card.dart';
import '../widgets/day card.dart';
import '../widgets/time card.dart';

class DoctorDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Doctor Detail",
          style: getSemiBoldStyle(
              color: ColorManager.black, fontSize: AppSize.s26),
        ),
        leading:
            IconButton(onPressed: () {Get.back();}, icon: const Icon(CupertinoIcons.back)),
      ),
      body: Column(children: [Expanded(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(PaddingSize.p16),
            child: Column(

              children: [
                DoctorCard(
                  image: ImageManager.doctor1Image,
                ),
                const SizedBox(
                  height: AppSize.s8,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "About",
                    style: getMediumStyle(),
                  ),
                ),
                const SizedBox(
                  height: AppSize.s16,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam... Read more",
                  style: getLightStyle(
                      fontSize: AppSize.s18, color: ColorManager.grey),
                ),
                const SizedBox(
                  height: AppSize.s18,
                ),
                SizedBox(
                  height: 110,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return DayCard();
                    },
                  ),
                ),
                const SizedBox(height: AppSize.s12,),
                Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  children: [
                    TimeCard(),
                    TimeCard(),
                    TimeCard(),
                    TimeCard(),
                    TimeCard(),
                    TimeCard(),
                    TimeCard(),
                    TimeCard(),
                    TimeCard(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(PaddingSize.p20),
        child: DefaultButton(text: "Book Appointment", onPressed: (){},width: double.infinity,),
      )
      ],),
    );
  }
}
