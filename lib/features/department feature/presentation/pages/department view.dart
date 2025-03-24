import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/department card.dart';

class DepartmentView extends StatelessWidget {
  const DepartmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:  Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: GridView.count(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 25,
              crossAxisSpacing: 20,
              childAspectRatio: 1,
              children: const [
               DepartmentCard(text: 'General',icon: FontAwesomeIcons.stethoscope),
               DepartmentCard(text: 'Surgeon',icon: FontAwesomeIcons.syringe),
               DepartmentCard(text: 'Dentist',icon: FontAwesomeIcons.tooth),
               DepartmentCard(text: 'Lungs Specialist',icon: FontAwesomeIcons.lungs),
               DepartmentCard(text: 'Cardiologist',icon: FontAwesomeIcons.heartPulse),
              // DepartmentCard(text: 'Covid-19',icon: FontAwesomeIcons.virusCovid),
               DepartmentCard(text: 'Psychiatrist',icon: FontAwesomeIcons.headSideCough),
              
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
