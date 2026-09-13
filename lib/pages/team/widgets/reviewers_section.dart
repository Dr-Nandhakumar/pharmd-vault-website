import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class ReviewersSection extends StatelessWidget {
  const ReviewersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Reviewers Panel",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 18),

          SizedBox(
            width: 900,
            child: Text(
              "Our reviewers are experienced academicians, clinicians, researchers, and healthcare professionals committed to maintaining the scientific quality and integrity of every publication.",
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
              _ReviewerCard(specialization: "Clinical Pharmacy"),
              _ReviewerCard(specialization: "Pharmacology"),
              _ReviewerCard(specialization: "Pharmaceutics"),
              _ReviewerCard(specialization: "Pharmaceutical Chemistry"),
              _ReviewerCard(specialization: "Hospital Pharmacy"),
              _ReviewerCard(specialization: "Pharmacovigilance", name: "Dr. Hudson Philip", qualification: "Pharm.D (PB), Rph"),
            ],
          ),
        ],
      ),
    );
  }
}

class _ReviewerCard extends StatelessWidget {
  final String specialization;
  final String name;
  final String qualification;

  const _ReviewerCard({required this.specialization, this.name = '', this.qualification = ''});

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
                  Icons.fact_check_outlined,
                  color: AppColors.primary,
                  size: 42,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                "Reviewer",
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),

              if (name.isNotEmpty) ...[
                const SizedBox(height: 10),
                Text(name, textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 6),
                Text(qualification, textAlign: TextAlign.center),
              ],

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
                  specialization,
                  style: const TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              const SizedBox(height: 16),

              Text(
                "Official Peer Reviewer",
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
