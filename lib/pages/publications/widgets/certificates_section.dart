import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class CertificatesSection extends StatelessWidget {
  const CertificatesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Certificates & Recognition",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 18),

          Text(
            "Pharm.D Vault recognizes the valuable contributions of authors, reviewers, editors, and research collaborators.",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),

          const SizedBox(height: 50),

          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: const [
              _CertificateCard(
                icon: Icons.workspace_premium,
                title: "Publication Certificate",
                description:
                    "Issued to authors after successful publication of accepted manuscripts.",
              ),

              _CertificateCard(
                icon: Icons.fact_check,
                title: "Peer Reviewer Certificate",
                description:
                    "Awarded to reviewers for completing scientific peer review.",
              ),

              _CertificateCard(
                icon: Icons.groups,
                title: "Editorial Recognition",
                description:
                    "Recognizes Editorial Board members for their service and leadership.",
              ),

              _CertificateCard(
                icon: Icons.volunteer_activism,
                title: "Research Contribution",
                description:
                    "Presented to collaborators and contributors supporting research activities.",
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
                  Icon(Icons.verified, size: 48, color: AppColors.primary),

                  const SizedBox(height: 18),

                  Text(
                    "Digital Verification",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 16),

                  Text(
                    "All certificates issued by Pharm.D Vault Organization are digitally generated with unique identification numbers. Future versions may include secure online verification.",
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

class _CertificateCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _CertificateCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: AppColors.primary.withValues(alpha: 0.10),
                child: Icon(icon, color: AppColors.primary, size: 30),
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
