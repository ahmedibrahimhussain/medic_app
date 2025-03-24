import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/widgets/custom text form field.dart';
import '../../../../core/recourses/font manager/font manager.dart';
import '../../../../core/recourses/image manager/image manager.dart';
import '../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../core/recourses/value manger/value manager.dart';
import '../../../find doctor feature/presentation/pages/doctor detail view.dart';
import '../../../find doctor feature/presentation/pages/find doctor View.dart';
import '../widgets/homePage card.dart';
import '../widgets/homePage top doctor card.dart';
import 'top doctors.dart';


class HomePageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(PaddingSize.p20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const CustomTextFormField(
                prefixIcon: Icons.search,
                hintText: "Search doctor, drugs, articles...",
              ),
              const SizedBox(
                height: AppSize.s20,
              ),
              HomePageCard(
                  image: ImageManager.cardImage,
                  buttonText: "Find Doctor",
                  cardText: "Early protection for your family health",
                  onPressed: () {Get.to(FindDoctorView());}),
              const SizedBox(
                height: AppSize.s20,
              ),

              Row(
                children: [
                  Expanded(
                      child: Text(
                    "Top Doctor",
                    style: getMediumStyle(),
                  )),
                  TextButton(
                      onPressed: () {Get.to(TopDoctorsView());},
                      child: const Text(
                        "see all",
                        style: TextStyle(fontSize: FontSizeManager.s18),
                      ),),
                ],
              ),
              SizedBox(
                height: 230,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
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
