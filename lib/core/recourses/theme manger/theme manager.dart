import 'package:flutter/material.dart';


import '../color manager/color manager.dart';
import '../font manager/font manager.dart';
import '../styles manger/styles manager.dart';
import '../value manger/value manager.dart';





ThemeData getAppTheme(){
  return ThemeData(
    // main colors
    primaryColor: ColorManager.primary,
    scaffoldBackgroundColor: ColorManager.white,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      iconTheme: const IconThemeData(color: ColorManager.black,
      size: AppSize.s26,
      ),
      color: ColorManager.white,
      shadowColor: ColorManager.shadowColor,
      elevation: 0,
      titleTextStyle: getRegularStyle(color: ColorManager.white,fontSize: FontSizeManager.s16),
    ),

    buttonTheme: const ButtonThemeData(
      shape: StadiumBorder(),
      buttonColor: ColorManager.primary,
      textTheme:ButtonTextTheme.primary,
      splashColor: ColorManager.lightPrimary,
      

    ),
    
    inputDecorationTheme: InputDecorationTheme(
      fillColor: ColorManager.textFormFieldColor,
     filled: true,
      
      contentPadding:const EdgeInsets.all(PaddingSize.p16),
      hintStyle: getRegularStyle(color: ColorManager.darkGray,fontSize: FontSizeManager.s14),
      labelStyle: getRegularStyle(color: ColorManager.darkGray,fontSize: FontSizeManager.s18),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.lightPrimary,width: 1,),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s20)),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.darkGray,width: 1,),
        borderRadius: BorderRadius.all(Radius.circular(AppSize.s20)),
      ),
      prefixIconColor: ColorManager.darkGray,
      suffixIconColor: ColorManager.darkGray,
      prefixStyle: const TextStyle(fontSize: AppSize.s14)
    ),

  );
}