import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class AuthorGuidelines extends StatelessWidget {
  const AuthorGuidelines({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Author Guidelines",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 18),

          Text(
            "Authors are encouraged to follow these guidelines to ensure a smooth editorial and peer-review process.",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),

          const SizedBox(height: 50),

          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: const [
              _GuidelineCard(
                icon: Icons.people_outline,
                title: "Who Can Submit?",
                description:
                    "Pharmacy students, academicians, researchers, clinicians, healthcare professionals, and allied medical experts may submit manuscripts.",
              ),

              _GuidelineCard(
                icon: Icons.article_outlined,
                title: "Accepted Article Types",
                description:
                    "Original Research, Review Articles, Case Reports, Short Communications, Editorials, Letters, and Educational Articles.",
              ),

              _GuidelineCard(
                icon: Icons.language,
                title: "Language",
                description:
                    "All manuscripts must be written in clear, professional English with appropriate scientific terminology.",
              ),

              _GuidelineCard(
                icon: Icons.groups_outlined,
                title: "Authorship",
                description:
                    "Every listed author must have made a substantial scientific contribution to the work and approve the final manuscript.",
              ),

              _GuidelineCard(
                icon: Icons.assignment_turned_in_outlined,
                title: "Originality",
                description:
                    "Submitted work must be original, unpublished, and not under consideration by another journal or publisher.",
              ),

              _GuidelineCard(
                icon: Icons.email_outlined,
                title: "Corresponding Author",
                description:
                    "One corresponding author should be designated to communicate with the editorial office throughout the publication process.",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _GuidelineCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _GuidelineCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            children: [
              CircleAvatar(
                radius: 32,
                backgroundColor: AppColors.primary.withValues(alpha: 0.10),
                child: Icon(icon, color: AppColors.primary, size: 32),
              ),

              const SizedBox(height: 20),

              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 14),

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
