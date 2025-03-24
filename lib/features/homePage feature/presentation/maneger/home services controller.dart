import 'package:get/get.dart';

import '../../../Appointment feature/presentation/pages/appointment View.dart';
import '../../../Prescription feature/presentation/pages/prescripton View.dart';
import '../../../Profile feature/presentation/pages/profile View.dart';
import '../../../department feature/presentation/pages/department view.dart';
import '../pages/homePage View.dart';


class HomeServicesController extends GetxController{
  var currentIndex = 0.obs;
  List screens = [
    HomePageView(),
    AppointmentView(),
    const DepartmentView(),
    PrescriptionView(),
    const ProfileView()
  ];
  List appBarTitleList=[
    "Home",
    "Appointment",
    "Department",
    "Prescription",
    "Profile"
  ];
}