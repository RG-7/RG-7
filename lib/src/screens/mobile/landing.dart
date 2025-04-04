import 'package:flutter/material.dart';

import '../../const/colors.dart';

class MobileLandingScreen extends StatelessWidget {
  const MobileLandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhiteCream,
      body: Center(child: Text("MobileLandingScreen")),
    );
  }
}