import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class AdvisoryBoard extends StatelessWidget {
  const AdvisoryBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Advisory Board",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 16),

          SizedBox(
            width: 900,
            child: Text(
              "Our Advisory Board consists of experienced academicians, researchers, healthcare professionals, and industry experts who provide strategic guidance and academic leadership.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),

          const SizedBox(height: 50),

          Wrap(
            spacing: 28,
            runSpacing: 28,
            alignment: WrapAlignment.center,
            children: const [
              _AdvisorCard(
                name: "Advisor Position",
                expertise: "Clinical Pharmacy",
              ),
              _AdvisorCard(name: "Advisor Position", expertise: "Pharmacology"),
              _AdvisorCard(
                name: "Advisor Position",
                expertise: "Pharmaceutics",
              ),
              _AdvisorCard(
                name: "Advisor Position",
                expertise: "Pharmaceutical Analysis",
              ),
              _AdvisorCard(
                name: "Advisor Position",
                expertise: "Hospital Pharmacy",
              ),
              _AdvisorCard(
                name: "Advisor Position",
                expertise: "Research & Innovation",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _AdvisorCard extends StatelessWidget {
  final String name;
  final String expertise;

  const _AdvisorCard({required this.name, required this.expertise});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              CircleAvatar(
                radius: 46,
                backgroundColor: AppColors.primary.withValues(alpha: 0.10),
                child: const Icon(
                  Icons.school_outlined,
                  color: AppColors.primary,
                  size: 44,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                name,
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(alpha: 0.10),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  expertise,
                  style: const TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              const SizedBox(height: 16),

              Text(
                "Advisory Board Member",
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: Colors.grey[700]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
