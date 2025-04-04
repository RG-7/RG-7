import 'package:flutter/material.dart';

import '/src/const/responsive.dart';
import '/src/screens/desktop/labs.dart';
import '/src/screens/mobile/labs.dart';

class CommonLabsScreen extends StatelessWidget {
  const CommonLabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileView: MobileLabsScreen(),
      desktopView: DesktopLabsScreen(),
    );
  }
}
