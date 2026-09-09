import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class PublicationEthics extends StatelessWidget {
  const PublicationEthics({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Publication Ethics",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 18),

          SizedBox(
            width: 900,
            child: Text(
              "Pharm.D Vault Organization is committed to maintaining the highest standards of publication ethics, research integrity, and scientific transparency.",
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(height: 1.6),
            ),
          ),

          const SizedBox(height: 50),

          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: const [
              _EthicsCard(
                icon: Icons.verified_user_outlined,
                title: "Research Integrity",
                description:
                    "Authors must honestly present research findings without fabrication, falsification, or manipulation of data.",
              ),

              _EthicsCard(
                icon: Icons.groups_outlined,
                title: "Responsible Authorship",
                description:
                    "Only individuals who have made substantial academic contributions should be listed as authors.",
              ),

              _EthicsCard(
                icon: Icons.balance_outlined,
                title: "Conflict of Interest",
                description:
                    "Financial, academic, or personal conflicts that may influence the research must be disclosed.",
              ),

              _EthicsCard(
                icon: Icons.health_and_safety_outlined,
                title: "Human & Animal Ethics",
                description:
                    "Research involving humans or animals must comply with institutional ethics committee approvals and applicable regulations.",
              ),

              _EthicsCard(
                icon: Icons.dataset_outlined,
                title: "Data Transparency",
                description:
                    "Authors should retain research data and provide supporting information whenever requested by the editorial office.",
              ),

              _EthicsCard(
                icon: Icons.rule_folder_outlined,
                title: "Editorial Responsibility",
                description:
                    "Editors and reviewers evaluate submissions fairly, confidentially, and without discrimination.",
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
              padding: const EdgeInsets.all(32),
              child: Column(
                children: [
                  Icon(Icons.gavel, size: 50, color: AppColors.primary),

                  const SizedBox(height: 20),

                  Text(
                    "Ethical Commitment",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 18),

                  Text(
                    "Every manuscript submitted to Pharm.D Vault Organization is expected to comply with internationally accepted principles of research ethics, publication integrity, confidentiality, and responsible scientific conduct. Violations may result in rejection, correction, retraction, or other editorial actions.",
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

class _EthicsCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _EthicsCard({
    required this.icon,
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
