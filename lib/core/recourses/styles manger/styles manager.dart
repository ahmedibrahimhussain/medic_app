import 'package:flutter/material.dart';

import '../font manager/font manager.dart';

TextStyle _getTextStyle({
  double? fontSize,
  FontWeight? fontWeight,
  Color? color,
}) {
  return TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
  );
}

TextStyle getRegularStyle({
   Color color = Colors.black,
  double fontSize = FontSizeManager.s20,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    fontWeight: FontWeightManager.regular,
    color: color,
  );
}

TextStyle getMediumStyle({
  Color color = Colors.black,
  double fontSize = FontSizeManager.s20,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    fontWeight: FontWeightManager.medium,
    color: color,
  );
}

TextStyle getLightStyle({
  Color color = Colors.black,
  double fontSize = FontSizeManager.s20,
}) {
  return _getTextStyle(
    fontSize:fontSize,
    fontWeight: FontWeightManager.light,
    color: color,
  );
}

 TextStyle getBoldStyle({
  Color color = Colors.black,
  double fontSize = FontSizeManager.s20,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    fontWeight: FontWeightManager.bold,
    color: color,
  );
}

TextStyle getSemiBoldStyle({
  Color color = Colors.black,
  double fontSize = FontSizeManager.s20,
}) {
  return _getTextStyle(
    fontSize: fontSize,
    fontWeight: FontWeightManager.semiBold,
    color: color,
  );
}
