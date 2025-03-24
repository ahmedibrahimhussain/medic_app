import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/recourses/color manager/color manager.dart';
import '../../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../../core/recourses/value manger/value manager.dart';
import '../../../../core/recourses/font manager/font manager.dart';
import '../../../find doctor feature/presentation/pages/doctor detail view.dart';
import '../widgets/appointment card.dart';

class AppointmentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(PaddingSize.p16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Feb 2023",
                  style: getSemiBoldStyle(
                      color: ColorManager.darkGray,
                      fontSize: FontSizeManager.s22),
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return AppointmentCard(
                      onTap: () {
                        Get.to(DoctorDetailView());
                      },
                    );
                  },
                ),
                Text(
                  "Feb 2023",
                  style: getSemiBoldStyle(
                      color: ColorManager.darkGray,
                      fontSize: FontSizeManager.s22),
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return AppointmentCard(
                      onTap: () {
                        Get.to(DoctorDetailView());
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
