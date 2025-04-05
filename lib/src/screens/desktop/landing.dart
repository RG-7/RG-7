import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '/src/const/responsive.dart';
import '/src/screens/desktop/experience.dart';
import '/src/const/colors.dart';

class DesktopLandingScreen extends StatefulWidget {
  const DesktopLandingScreen({super.key});

  @override
  State<DesktopLandingScreen> createState() => _DesktopLandingScreenState();
}

class _DesktopLandingScreenState extends State<DesktopLandingScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.backgroundWhiteCream,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // services
            Column(
              children: [
                topNavigationBar(h, w),
                about(w, h, context),
              ],
            ),

            SizedBox(height: h * 0.15),

            // Experience
            DesktopExperienceScreen()

            // Works

            // Labs

            // Skills

            // footer
          ],
        ),
      ),
    );
  }

  Padding about(double w, double h, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SvgPicture.asset(
              "assets/svg/bg-green.svg",
              width: w / 3,
              height: h * 0.8,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              "assets/images/ratn.png",
              width: w / 2,
              height: h * 0.8,
            ),
          ),
          Positioned(
            left: w * 0.05,
            top: h * 0.2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: h * 0.07,
              children: [
                Text(
                  "Hey There,\nI'm Ratn",
                  style: GoogleFonts.albertSans(
                    fontWeight: FontWeight.bold,
                    color: AppColors.navyBlue,
                    fontSize:
                        ResponsiveFunction.getResponsiveFontSize(context, 55),
                  ),
                ),
                SizedBox(height: h * 0.02),
                Text(
                  "rg.ratn@gmail.com",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.albertSans(
                    fontWeight: FontWeight.w500,
                    color: AppColors.orange,
                    fontSize:
                        ResponsiveFunction.getResponsiveFontSize(context, 25),
                  ),
                ),
                SizedBox(height: h * 0.02),
                Row(
                  children: [
                    Text(
                      "1.5",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        color: AppColors.navyBlue,
                        fontSize: ResponsiveFunction.getResponsiveFontSize(
                            context, 50),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "YEARS\nEXPERIENCE",
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.normal,
                        color: AppColors.navyBlue,
                        fontSize: ResponsiveFunction.getResponsiveFontSize(
                            context, 15),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: w * 0.1,
            top: h * 0.35,
            child: Text(
              "I develop simple things,\nand I love what I do. ",
              style: GoogleFonts.aBeeZee(
                fontWeight: FontWeight.w100,
                color: AppColors.navyBlue,
                fontSize: ResponsiveFunction.getResponsiveFontSize(context, 25),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container topNavigationBar(double h, double w) {
    return Container(
      height: h * 0.15,
      decoration: BoxDecoration(
        color: AppColors.backgroundWhiteCream,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // ratn
              Text(
                "Ratn",
                style: GoogleFonts.cedarvilleCursive(
                  color: AppColors.black,
                  fontSize:
                      ResponsiveFunction.getResponsiveFontSize(context, 32),
                ),
              ),

              // row 2 menu
              Row(
                children: [
                  navBar(index: 0, selectedIndex: _index, text: "SERVICES"),
                  SizedBox(width: w * 0.001),
                  navBar(index: 1, selectedIndex: _index, text: "WORKS"),
                  SizedBox(width: w * 0.001),
                  navBar(index: 2, selectedIndex: _index, text: "LABS"),
                  SizedBox(width: w * 0.001),
                  navBar(index: 3, selectedIndex: _index, text: "EXPERIENCE"),
                  SizedBox(width: w * 0.001),
                  navBar(index: 4, selectedIndex: _index, text: "SKILLS"),
                  SizedBox(width: w * 0.1),
                  Row(
                    children: [
                      Text(
                        "+91-9779791959",
                        style: GoogleFonts.abel(
                          color: AppColors.black,
                          fontSize: ResponsiveFunction.getResponsiveFontSize(
                              context, 18),
                        ),
                      ),
                      SizedBox(width: w * 0.01),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColors.white,
                        child: Icon(
                          Icons.phone_callback_outlined,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector navBar({
    required int index,
    required int selectedIndex,
    required String text,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _index = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
              width: selectedIndex == index ? 2 : 1,
              color: selectedIndex == index
                  ? AppColors.backgroundDarkGreen
                  : AppColors.backgroundWhiteCream,
            ),
            left: BorderSide(
              width: selectedIndex == index ? 2 : 1,
              color: selectedIndex == index
                  ? AppColors.backgroundDarkGreen
                  : AppColors.backgroundWhiteCream,
            ),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          text,
          style: GoogleFonts.actor(
            color: selectedIndex == index
                ? AppColors.backgroundDarkGreen
                : AppColors.black,
            fontSize: ResponsiveFunction.getResponsiveFontSize(context, 14),
          ),
        ),
      ),
    );
  }
}
