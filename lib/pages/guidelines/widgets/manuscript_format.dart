import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class ManuscriptFormat extends StatelessWidget {
  const ManuscriptFormat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xffF8FAFC),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Manuscript Format",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 18),

          Text(
            "Authors should organize manuscripts using the standard scientific structure below.",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),

          const SizedBox(height: 50),

          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: const [
              _FormatCard(
                number: "01",
                title: "Title Page",
                description:
                    "Article title, author names, affiliations, ORCID (if available), and corresponding author details.",
              ),

              _FormatCard(
                number: "02",
                title: "Abstract",
                description:
                    "Provide a concise structured abstract summarizing objectives, methods, results, and conclusions.",
              ),

              _FormatCard(
                number: "03",
                title: "Keywords",
                description:
                    "Include 3–6 relevant keywords to improve indexing and discoverability.",
              ),

              _FormatCard(
                number: "04",
                title: "Introduction",
                description:
                    "Describe the background, rationale, and objectives of the study.",
              ),

              _FormatCard(
                number: "05",
                title: "Materials & Methods",
                description:
                    "Clearly explain study design, methodology, statistical analysis, and ethical approvals.",
              ),

              _FormatCard(
                number: "06",
                title: "Results",
                description:
                    "Present findings using tables, figures, and appropriate statistical interpretation.",
              ),

              _FormatCard(
                number: "07",
                title: "Discussion",
                description:
                    "Interpret the findings, compare with previous literature, discuss limitations and future scope.",
              ),

              _FormatCard(
                number: "08",
                title: "Conclusion",
                description:
                    "Summarize the major outcomes and significance of the study.",
              ),

              _FormatCard(
                number: "09",
                title: "References",
                description:
                    "Use the reference style specified by Pharm.D Vault Organization. Ensure accuracy and completeness.",
              ),

              _FormatCard(
                number: "10",
                title: "Tables & Figures",
                description:
                    "Provide high-quality tables and figures with appropriate numbering and captions.",
              ),
            ],
          ),

          const SizedBox(height: 60),

          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Icon(
                    Icons.description_outlined,
                    size: 48,
                    color: AppColors.primary,
                  ),

                  const SizedBox(height: 18),

                  Text(
                    "Formatting Recommendations",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Text(
                    "Use a clear academic font (such as Times New Roman or Arial), consistent headings, double-line spacing where required, page numbering, and standard scientific terminology throughout the manuscript.",
                    textAlign: TextAlign.center,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyLarge?.copyWith(height: 1.7),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FormatCard extends StatelessWidget {
  final String number;
  final String title;
  final String description;

  const _FormatCard({
    required this.number,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 330,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: AppColors.primary.withValues(alpha: 0.10),
                child: Text(
                  number,
                  style: const TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),

              const SizedBox(height: 18),

              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 12),

              Text(
                description,
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(height: 1.6),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
