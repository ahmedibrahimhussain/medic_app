import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../../core/recourses/color manager/color manager.dart';
import '../../../../../core/recourses/font manager/font manager.dart';
import '../../../../../core/recourses/image manager/image manager.dart';
import '../../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../../core/recourses/value manger/value manager.dart';
import '../../../../../core/widgets/custom text form field.dart';
import '../../../homePage feature/presentation/pages/top doctors.dart';
import '../../../homePage feature/presentation/widgets/doctor card.dart';
import '../../../homePage feature/presentation/widgets/homePage top doctor card.dart';
import '../widgets/category icon.dart';
import 'doctor detail view.dart';

class FindDoctorView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Find Doctor",
          style:
          getSemiBoldStyle(color:ColorManager.black,fontSize: AppSize.s26),
        ),
        leading:IconButton(onPressed: (){Get.back();}, icon: const Icon(CupertinoIcons.back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(PaddingSize.p20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(

            children: [
              const CustomTextFormField(
                prefixIcon: Icons.search,
                hintText: "Find a doctor",
              ),
              const SizedBox(
                height: AppSize.s20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Category",
                  style: getMediumStyle(),
                ),
              ),
              const SizedBox(
                height: AppSize.s20,
              ),
               Wrap(
                runSpacing: AppSize.s12,
                children: const [
                CategoryIcon(categoryName: "General",icon: FontAwesomeIcons.stethoscope),
                SizedBox(width: AppSize.s20,),
                CategoryIcon(categoryName: "Dentist",icon: FontAwesomeIcons.tooth),
                SizedBox(width: AppSize.s20,),
                CategoryIcon(categoryName: "Psychiatrist",icon: FontAwesomeIcons.headSideCough),
                SizedBox(width: AppSize.s20,),
                CategoryIcon(categoryName: "Covid-19",icon: FontAwesomeIcons.virusCovid),
                SizedBox(width: AppSize.s20,),
                CategoryIcon(categoryName: "Surgeon",icon: FontAwesomeIcons.syringe),
                SizedBox(width: AppSize.s20,),
                CategoryIcon(categoryName: "Cardiologist",icon: FontAwesomeIcons.heartPulse),
                SizedBox(width: AppSize.s20,)
              ],),
              const SizedBox(
                height: AppSize.s20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Recommended Doctors",
                  style: getMediumStyle(),
                ),
              ),
const SizedBox(
                height: AppSize.s12,
              ),
              DoctorCard(image: ImageManager.doctor1Image,),
              const SizedBox(
                height: AppSize.s20,
              ),

              Row(
                children: [
                  Expanded(
                      child: Text(
                        "Your Recent Doctors",
                        style: getMediumStyle(),
                      )),
                  TextButton(
                      onPressed: () {Get.to(TopDoctorsView());},
                      child: const Text(
                        "see all",
                        style: TextStyle(fontSize: FontSizeManager.s18),
                      )),
                ],
              ),
              SizedBox(
                height: 230,
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return HomePageTopDoctorCard(image: ImageManager.doctor1Image,onTap: (){Get.to(DoctorDetailView());},);
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      width: AppSize.s12,
                    );
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
