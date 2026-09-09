import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class PublicationGuidelinesCard extends StatelessWidget {
  const PublicationGuidelinesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Publication Guidelines",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 16),

          Text(
            "Authors are requested to carefully read the publication policies before submitting their manuscripts.",
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
                icon: Icons.description_outlined,
                title: "Original Work",
                description:
                    "Only original, unpublished manuscripts are accepted.",
              ),

              _GuidelineCard(
                icon: Icons.fact_check_outlined,
                title: "Plagiarism Policy",
                description:
                    "All manuscripts are screened for plagiarism before review.",
              ),

              _GuidelineCard(
                icon: Icons.groups_outlined,
                title: "Authorship",
                description:
                    "Every listed author must have made a genuine scientific contribution.",
              ),

              _GuidelineCard(
                icon: Icons.psychology_alt_outlined,
                title: "AI Disclosure",
                description:
                    "Any use of Artificial Intelligence tools must be clearly disclosed by the authors.",
              ),

              _GuidelineCard(
                icon: Icons.security_outlined,
                title: "Research Ethics",
                description:
                    "Human and animal studies must comply with recognized ethical standards.",
              ),

              _GuidelineCard(
                icon: Icons.format_align_left_outlined,
                title: "Formatting",
                description:
                    "Authors should follow the official Pharm.D Vault manuscript format.",
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            children: [
              CircleAvatar(
                radius: 32,
                backgroundColor: AppColors.primary.withValues(alpha: 0.12),
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
