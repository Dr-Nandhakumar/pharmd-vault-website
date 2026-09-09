import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class ObjectivesSection extends StatelessWidget {
  const ObjectivesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      color: const Color(0xffF8FAFC),
      child: Column(
        children: [
          Text(
            "Our Objectives",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 16),

          Text(
            "Committed to advancing pharmacy education, research, and healthcare excellence.",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),

          const SizedBox(height: 50),

          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: const [
              _ObjectiveCard(
                icon: Icons.school_outlined,
                title: "Pharmacy Education",
                description:
                    "Provide quality educational resources for students and professionals.",
              ),
              _ObjectiveCard(
                icon: Icons.science_outlined,
                title: "Scientific Research",
                description:
                    "Encourage ethical, evidence-based research and publications.",
              ),
              _ObjectiveCard(
                icon: Icons.groups_outlined,
                title: "Collaboration",
                description:
                    "Connect researchers, institutions, and healthcare professionals worldwide.",
              ),
              _ObjectiveCard(
                icon: Icons.health_and_safety_outlined,
                title: "Healthcare",
                description:
                    "Support better patient care through clinical pharmacy services.",
              ),
              _ObjectiveCard(
                icon: Icons.lightbulb_outline,
                title: "Innovation",
                description:
                    "Promote AI, digital healthcare, and innovative pharmacy practices.",
              ),
              _ObjectiveCard(
                icon: Icons.workspace_premium_outlined,
                title: "Professional Growth",
                description:
                    "Empower future pharmacy leaders through continuous learning.",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ObjectiveCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _ObjectiveCard({
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
                radius: 34,
                backgroundColor: AppColors.primary.withValues(alpha: 0.12),
                child: Icon(icon, size: 34, color: AppColors.primary),
              ),

              const SizedBox(height: 20),

              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
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
