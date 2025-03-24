import 'package:flutter/material.dart';

import '../../../../core/recourses/color manager/color manager.dart';
import '../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../core/recourses/value manger/value manager.dart';
import '../../../../core/widgets/custom button.dart';

class GetStartedPageButtonSection extends StatelessWidget {
  const GetStartedPageButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          child: Text(
            'Login',
            style: getSemiBoldStyle(
              color: ColorManager.white,
            ),
          ),
          onPressed: () {},
        ),
        const SizedBox(height: AppSize.s16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: PaddingSize.p30),
          child: Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                      const BorderSide(
                        color: ColorManager.seconderyColor,
                        width: 1.5,
                      ),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppSize.s30),
                      ),
                    ),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(
                        vertical: PaddingSize.p16,
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: getSemiBoldStyle(
                      color: ColorManager.seconderyColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
