import 'package:flutter/material.dart';

import '/src/const/responsive.dart';
import '/src/screens/desktop/landing.dart';
import '/src/screens/mobile/landing.dart';

class CommonLandingScreen extends StatelessWidget {
  const CommonLandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktopView: DesktopLandingScreen(),
      mobileView: MobileLandingScreen(),
    );
  }
}
