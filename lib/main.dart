import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medic_app/features/splash%20feature/presentation/pages/splash%20page.dart';
import 'core/recourses/theme manger/theme manager.dart';

void main() {
  
  runApp(const MedicApp());
}

class MedicApp extends StatelessWidget {
  const MedicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: getAppTheme(),
      
      home: const SplashPage(),
    );
  }
}