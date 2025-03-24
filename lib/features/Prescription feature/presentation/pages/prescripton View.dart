import 'package:flutter/material.dart';

import '../widgets/prescription card.dart';

class PrescriptionView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
          
          return PrescriptionCard(medicineName: 'Peracetamol', medicineSize: '500', whenToTake: 'before food', duration: '3Day', description: 'take one table 2 time a day',startOn: "1/12/2023",);
        },),
      ),
    );
  }
}
