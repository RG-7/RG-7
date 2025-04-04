import 'package:flutter/material.dart';
import 'package:ratn_portfolio/src/const/responsive.dart';
import 'package:ratn_portfolio/src/screens/desktop/services.dart';
import 'package:ratn_portfolio/src/screens/mobile/services.dart';

class CommonServiceScreen extends StatelessWidget {
  const CommonServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileView: MobileServiceScreen(),
      desktopView: DesktopServiceScreen(),
    );
  }
}
