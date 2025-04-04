import 'package:flutter/material.dart';
import 'package:ratn_portfolio/src/const/responsive.dart';
import 'package:ratn_portfolio/src/screens/desktop/skills.dart';
import 'package:ratn_portfolio/src/screens/mobile/skills.dart';

class CommonSkillsScreen extends StatelessWidget {
  const CommonSkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileView: MobileSkillsScreen(),
      desktopView: DesktopSkillsScreen(),
    );
  }
}
