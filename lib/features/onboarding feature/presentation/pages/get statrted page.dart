import 'package:flutter/material.dart';

import '../widgets/get started page button section.dart';
import '../widgets/get started page top section.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          GetStartedPageTopSection(),
          SizedBox(height: 60),
          GetStartedPageButtonSection(),
        ],
      ),
    );
  }
}
