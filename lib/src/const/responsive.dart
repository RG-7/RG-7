import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileView;
  final Widget desktopView;

  const ResponsiveLayout({
    required this.mobileView,
    required this.desktopView,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery to determine screen width
    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 600) {
      // Mobile View
      return mobileView;
    } else {
      // Desktop/Tablet View
      return desktopView;
    }
  }
}
