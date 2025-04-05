import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:google_fonts/google_fonts.dart';

import '/src/const/responsive.dart';
import '../../const/colors.dart';

class DesktopExperienceScreen extends StatelessWidget {
  const DesktopExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Container(
      color: AppColors.backgroundWhiteCream,
      child: Column(
        children: [
          // my work experience
          Text(
            "My Work Experience",
            style: GoogleFonts.openSans(
              color: AppColors.navyBlue,
              fontWeight: FontWeight.bold,
              fontSize: ResponsiveFunction.getResponsiveFontSize(context, 50),
            ),
          ),

          SizedBox(height: h * 0.1),

          // 1st experience
          experienceFormat(
            context,
            h,
            "Defronix Cyber Security",
            "Jun 2023 - Jan 2024",
            "Security Analyst Intern",
            "As a Security Analyst Intern at Defronix Cyber Security, I analyzed vulnerabilities, utilized tools like Wireshark and Metasploit, and enhanced cybersecurity protocols to protect against threats, contributing to a secure digital environment.",
            false,
            0,
          ),

          // 2nd Experience
          experienceFormat(
            context,
            h,
            "RAPSAPP",
            "Jun 2024 - July 2024",
            "App Developer",
            "Developed a Flutter app for vendors and clients, enabling local sellers to upload services and clients to schedule requests. The app features a user-friendly UI, allowing clients to easily access and manage services from local vendors.",
            false,
            1,
          ),

          // 3rd experience
          experienceFormat(
            context,
            h,
            "Thapar University",
            "Jan 2025 - Present",
            "Student Software Developer",
            "Currently developing the Thapar Timetable Management System, focusing on backend and algorithm enhancements. Implementing an automated timetable generation algorithm and real-time schedule management. Creating a Flutter app for students and faculty to view and update timetables, with in-app notifications for changes. Ongoing project with incremental updates.",
            false,
            2,
          ),
        ],
      ),
    );
  }

  Padding experienceFormat(
    BuildContext context,
    double h,
    String company,
    String timeFrame,
    String jobRole,
    String jobDesc,
    bool isLast,
    int index,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  company,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize:
                        ResponsiveFunction.getResponsiveFontSize(context, 24),
                    color: AppColors.black,
                  ),
                ),
                Text(
                  timeFrame,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.normal,
                    fontSize:
                        ResponsiveFunction.getResponsiveFontSize(context, 16),
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                // Circle
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: AppColors.black,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index == 0
                            ? AppColors.backgroundDarkGreen
                            : index == 1
                                ? AppColors.orange
                                : AppColors.yellow,
                      ),
                    ),
                  ),
                ),

                // Spacer between circle and dash to avoid overlapping
                SizedBox(height: 2),

                // Dotted Line from bottom edge of the circle
                if (!isLast)
                  Dash(
                    direction: Axis.vertical,
                    length: h * 0.3,
                    dashLength: 7,
                    dashGap: 15,
                    dashColor: AppColors.black,
                  ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jobRole,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: ResponsiveFunction.getResponsiveFontSize(
                      context,
                      18,
                    ),
                    color: AppColors.black,
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Text(
                  jobDesc,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w500,
                    fontSize:
                        ResponsiveFunction.getResponsiveFontSize(context, 16),
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
