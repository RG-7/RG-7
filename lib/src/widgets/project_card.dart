import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ratn_portfolio/src/const/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/project.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({Key? key, required this.project}) : super(key: key);

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
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // IMAGE
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              project.imagePath,
              width: double.infinity,
              height: h * 0.2,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 12),

          // TITLE
          Text(
            project.title,
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: ResponsiveFunction.getResponsiveFontSize(context, 20),
            ),
          ),

          const SizedBox(height: 8),

          // DESCRIPTION
          Text(
            project.description,
            style: GoogleFonts.montserrat(
              fontSize: ResponsiveFunction.getResponsiveFontSize(context, 14),
              color: Colors.grey[700],
            ),
          ),

          const Spacer(),

          // ICON BUTTONS
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: const Icon(Icons.code),
                tooltip: 'GitHub',
                onPressed: () => _launchUrl(project.githubUrl),
              ),
              IconButton(
                icon: const Icon(Icons.language),
                tooltip: 'Website',
                onPressed: () => _launchUrl(project.websiteUrl),
              ),
            ],
          )
        ],
      ),
    );
  }
}
