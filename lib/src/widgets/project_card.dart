import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ratn_portfolio/src/const/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

import '../const/colors.dart';
import '../model/project.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  void _launchUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      launchUrl(Uri.parse(url));
    }
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 8)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.asset(
              project.imagePath,
              width: double.infinity,
              height: h * 0.35,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 12),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  project.title,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize:
                        ResponsiveFunction.getResponsiveFontSize(context, 20),
                  ),
                ),
                const SizedBox(height: 8),

                // Description
                Text(
                  project.description,
                  style: GoogleFonts.montserrat(
                    fontSize:
                        ResponsiveFunction.getResponsiveFontSize(context, 14),
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),

          const Spacer(),

          // Icon buttons
          Padding(
            padding: const EdgeInsets.only(right: 25,bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.code,
                    size: w < 1000 ? 20 : 22,
                    color: AppColors.backgroundDarkGreen,
                  ),
                  tooltip: 'GitHub',
                  onPressed: () => _launchUrl(project.githubUrl),
                ),
                IconButton(
                  icon: Icon(
                    Icons.language,
                    size: w < 1000 ? 20 : 22,
                    color: AppColors.navyBlue,
                  ),
                  tooltip: 'Website',
                  onPressed: () => _launchUrl(project.websiteUrl),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
