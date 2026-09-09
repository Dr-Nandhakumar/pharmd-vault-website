import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class OrganizationalChart extends StatelessWidget {
  const OrganizationalChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 90),
      child: Column(
        children: [
          Text(
            "Organizational Structure",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 16),

          SizedBox(
            width: 850,
            child: Text(
              "Pharm.D Vault Organization follows a structured leadership model that promotes transparency, collaboration, academic excellence, and efficient decision-making.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),

          const SizedBox(height: 60),

          Wrap(
            alignment: WrapAlignment.center,
            spacing: 20,
            runSpacing: 20,
            children: const [
              _LevelCard(
                title: "Founder & President",
                icon: Icons.workspace_premium,
              ),

              _LevelCard(title: "Executive Board", icon: Icons.groups),

              _LevelCard(title: "Advisory Board", icon: Icons.school),

              _LevelCard(title: "Editorial Board", icon: Icons.edit_document),

              _LevelCard(title: "Peer Review Panel", icon: Icons.fact_check),

              _LevelCard(
                title: "Volunteers & Student Coordinators",
                icon: Icons.volunteer_activism,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _LevelCard extends StatelessWidget {
  final String title;
  final IconData icon;

  const _LevelCard({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
          child: Column(
            children: [
              CircleAvatar(
                radius: 34,
                backgroundColor: AppColors.primary.withValues(alpha: 0.10),
                child: Icon(icon, size: 34, color: AppColors.primary),
              ),

              const SizedBox(height: 18),

              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
