

import 'package:flutter/material.dart';

import '../../../../../core/recourses/value manger/value manager.dart';
import '../../../../core/recourses/color manager/color manager.dart';

class DefaultBottomNavBar extends StatelessWidget {
  DefaultBottomNavBar({
    required this.onTap,
    required this.currentIndex,
    required this.iconOfItem1,
    required this.iconOfItem2,
    required this.iconOfItem3,
    required this.textOfItem1,
    required this.textOfItem2,
    required this.textOfItem3,
    required this.iconOfItem4,
    required this.iconOfItem5,
    required this.textOfItem4,
    required this.textOfItem5,
  });
  Function(int?)? onTap;
  late int currentIndex;
  IconData? iconOfItem1;
  IconData? iconOfItem2;
  IconData? iconOfItem3;
  IconData? iconOfItem4;
  IconData? iconOfItem5;
  String? textOfItem1;
  String? textOfItem2;
  String? textOfItem3;
  String? textOfItem4;
  String? textOfItem5;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 20,
      backgroundColor:ColorManager.white,
      currentIndex: currentIndex,
      onTap: onTap,
      iconSize:  AppSize.s30,
      unselectedItemColor: ColorManager.grey,
      selectedFontSize: AppSize.s16,
      selectedItemColor: ColorManager.seconderyColor,
      type: BottomNavigationBarType.shifting,
      
      items: [
        BottomNavigationBarItem(
          label: textOfItem1,
          icon: Icon(iconOfItem1,),
        ),
        BottomNavigationBarItem(
          label: textOfItem2,
          icon: Icon(iconOfItem2,),
        ),
        BottomNavigationBarItem(
          label: textOfItem3,
          icon: Icon(iconOfItem3,),
        ),
        BottomNavigationBarItem(
          label: textOfItem4,
          icon: Icon(iconOfItem4,),
        ),
        BottomNavigationBarItem(
          label: textOfItem5,
          icon: Icon(iconOfItem5,),
        ),
      ],
    );
  }
}
