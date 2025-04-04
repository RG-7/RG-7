import 'package:flutter/material.dart';

import '/src/const/responsive.dart';
import '/src/screens/desktop/experience.dart';
import '/src/screens/mobile/experience.dart';

class CommonExperienceScreen extends StatelessWidget {
  const CommonExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileView: MobileExperienceScreen(),
      desktopView: DesktopExperienceScreen(),
    );
  }
}
