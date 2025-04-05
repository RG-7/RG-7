import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/project.dart';
import '../../widgets/project_card.dart';
import '/src/const/responsive.dart';
import '../../const/colors.dart';

class DesktopWorksScreen extends StatelessWidget {
  const DesktopWorksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    double maxExtent = MediaQuery.of(context).size.width > 1200 ? 400 : 300;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 50),
      decoration: BoxDecoration(
        color: AppColors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Latest Work",
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                      fontSize: ResponsiveFunction.getResponsiveFontSize(
                        context,
                        30,
                      ),
                    ),
                  ),
                  Text(
                    "Perfect solutions for digital experience",
                    style: GoogleFonts.openSans(
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                      fontSize: ResponsiveFunction.getResponsiveFontSize(
                        context,
                        16,
                      ),
                    ),
                  ),
                ],
              ),

              // explore all of my projects
              InkWell(
                child: Text(
                  "Explore more",
                  style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w500,
                    color: AppColors.orange,
                    fontSize: ResponsiveFunction.getResponsiveFontSize(
                      context,
                      20,
                    ),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: h * 0.1),

          // grid
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1200),
              child: GridView.builder(
                itemCount: projects.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(20),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: maxExtent,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) =>
                    ProjectCard(project: projects[index]),
              ),
            ),
          ),

          SizedBox(
            height: h * 0.05,
          ),
        ],
      ),
    );
  }
}

final List<Project> projects = [
  Project(
    title: "Thapar Timetable",
    description:
        "A platform that auto-generates university timetables using optimization algorithms.",
    imagePath: "assets/images/timetable.png",
    githubUrl: "https://github.com/Thapar-TimeTable",
    websiteUrl: "https://thapartimetable.com",
  ),
  Project(
    title: "Hospital Management App",
    description:
        "Built for a government hospital to manage patient records and doctor schedules.",
    imagePath: "assets/images/hospital.jpg",
    githubUrl: "https://github.com/ratn/hospital-app",
    websiteUrl: "https://hospital.ratn.in",
  ),
  Project(
    title: "Portfolio Website",
    description:
        "My personal portfolio built in Flutter web, showcasing my experience, projects and skills.",
    imagePath: "assets/images/ratn.png",
    githubUrl: "https://github.com/ratn/portfolio",
    websiteUrl: "https://ratn.dev",
  ),
];
