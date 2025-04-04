import 'package:flutter/material.dart';
import 'package:ratn_portfolio/src/const/responsive.dart';
import 'package:ratn_portfolio/src/screens/desktop/works.dart';
import 'package:ratn_portfolio/src/screens/mobile/works.dart';

class CommonWorksScreen extends StatelessWidget {
  const CommonWorksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileView: MobileWorksScreen(),
      desktopView: DesktopWorksScreen(),
    );
  }
}
