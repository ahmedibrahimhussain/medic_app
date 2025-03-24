import 'package:flutter/material.dart';

import '../../../../core/recourses/styles manger/styles manager.dart';
import '../../../../core/recourses/value manger/value manager.dart';

PreferredSizeWidget? authPageCustomAppBar(String text) {
  return AppBar(
    centerTitle: true,
    title: Text(
      text,
      style: getBoldStyle(fontSize: AppSize.s20),
    ),
    elevation: 0,
  );
}
