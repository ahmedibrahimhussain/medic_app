import 'package:flutter/material.dart';

import '../../../../core/recourses/color manager/color manager.dart';
import '../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../core/recourses/value manger/value manager.dart';

class GetStartedPageTopSection extends StatelessWidget {
  const GetStartedPageTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
                  Container(
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(height: AppSize.s40),
          Text(
            'Let’s get started!',
            style: getBoldStyle(
              fontSize: AppSize.s22,
            ),
          ),
          const SizedBox(height: AppSize.s8),
          Text(
            'Login to enjoy the features we’ve provided, and stay healthy!',
            style: getRegularStyle(
              fontSize: AppSize.s16,
              color: ColorManager.grey,
            ),
            textAlign: TextAlign.center,
          ),

      ],
    );
  }
}