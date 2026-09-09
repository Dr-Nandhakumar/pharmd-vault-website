import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class SubmissionProcess extends StatelessWidget {
  const SubmissionProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xffF8FAFC),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Publication Process",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 15),

          Text(
            "Every manuscript follows a transparent and ethical publication workflow.",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),

          const SizedBox(height: 60),

          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: const [
              _StepCard(
                number: "01",
                icon: Icons.upload_file,
                title: "Submit Manuscript",
                description:
                    "Authors submit their manuscript through the official Pharm.D Vault submission portal.",
              ),

              _StepCard(
                number: "02",
                icon: Icons.fact_check,
                title: "Editorial Screening",
                description:
                    "The editorial team checks formatting, originality, and scope.",
              ),

              _StepCard(
                number: "03",
                icon: Icons.groups,
                title: "Peer Review",
                description:
                    "Experts evaluate scientific quality, methodology, and ethics.",
              ),

              _StepCard(
                number: "04",
                icon: Icons.edit_document,
                title: "Author Revision",
                description:
                    "Authors revise the manuscript based on reviewer feedback.",
              ),

              _StepCard(
                number: "05",
                icon: Icons.verified,
                title: "Final Acceptance",
                description:
                    "The Editorial Board grants final approval for publication.",
              ),

              _StepCard(
                number: "06",
                icon: Icons.public,
                title: "Online Publication",
                description:
                    "The article is published on the Pharm.D Vault platform with citation details.",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StepCard extends StatelessWidget {
  final String number;
  final IconData icon;
  final String title;
  final String description;

  const _StepCard({
    required this.number,
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
                backgroundColor: AppColors.primary.withValues(alpha: 0.12),
                child: Text(
                  number,
                  style: const TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Icon(icon, size: 42, color: AppColors.primary),

              const SizedBox(height: 18),

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
