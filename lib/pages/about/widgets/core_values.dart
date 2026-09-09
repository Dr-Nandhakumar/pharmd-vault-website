import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class CoreValues extends StatelessWidget {
  const CoreValues({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Our Core Values",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 16),

          Text(
            "The principles that guide every initiative of Pharm.D Vault Organization.",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),

          const SizedBox(height: 50),

          Wrap(
            alignment: WrapAlignment.center,
            spacing: 24,
            runSpacing: 24,
            children: const [
              _ValueCard(
                icon: Icons.verified_user_outlined,
                title: "Integrity",
                description:
                    "We uphold honesty, transparency, and accountability in every activity.",
              ),
              _ValueCard(
                icon: Icons.workspace_premium_outlined,
                title: "Excellence",
                description:
                    "We strive for the highest standards in education, research, and healthcare.",
              ),
              _ValueCard(
                icon: Icons.lightbulb_outline,
                title: "Innovation",
                description:
                    "We embrace new technologies and ideas to improve pharmacy practice.",
              ),
              _ValueCard(
                icon: Icons.groups_outlined,
                title: "Collaboration",
                description:
                    "We encourage teamwork among students, researchers, and professionals.",
              ),
              _ValueCard(
                icon: Icons.balance_outlined,
                title: "Ethics",
                description:
                    "Every publication and activity follows strong ethical principles.",
              ),
              _ValueCard(
                icon: Icons.public_outlined,
                title: "Global Impact",
                description:
                    "We aim to contribute to healthcare and scientific advancement worldwide.",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ValueCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _ValueCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            children: [
              CircleAvatar(
                radius: 32,
                backgroundColor: AppColors.primary.withValues(alpha: 0.12),
                child: Icon(icon, size: 32, color: AppColors.primary),
              ),

              const SizedBox(height: 18),

              Text(
                title,
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
