import 'package:flutter/material.dart';

import '../../../../core/recourses/color manager/color manager.dart';
import '../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../core/recourses/value manger/value manager.dart';

class HomePageTopDoctorCard extends StatelessWidget {
  const HomePageTopDoctorCard(
      {super.key,
      this.image,
      this.department,
      this.doctorName,
      this.rate,
      this.onTap});
  final String? doctorName;
  final String? department;
  final String? image;
  final String? rate;
 final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(PaddingSize.p12),
        height: 220,
        width: 160,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s20)),
            border: Border.all(
                color: const Color.fromRGBO(232, 243, 241, 1.0), width: 1.5)),
        child: Column(
          children: [
            CircleAvatar(
              radius: 45,
              backgroundImage: AssetImage(
                image ?? "",
              ),
            ),
            const SizedBox(
              height: AppSize.s16,
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Text(
                  doctorName ?? "Dr. Marcus Horizon",
                  style: getRegularStyle(),
                )),
            const SizedBox(
              height: AppSize.s12,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    department ?? "Psychologist",
                    style: const TextStyle(color: ColorManager.grey),
                  ),
                )),
            const SizedBox(
              height: AppSize.s12,
            ),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: ColorManager.amber,
                ),
                SizedBox(width: AppSize.s4),
                Text(
                  rate ?? "4.5",
                  style: const TextStyle(
                      color: ColorManager.darkGray, fontSize: 16),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
