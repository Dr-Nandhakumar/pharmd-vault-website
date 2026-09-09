import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class AIPolicy extends StatelessWidget {
  const AIPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Artificial Intelligence (AI) Policy",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 20),

          SizedBox(
            width: 900,
            child: Text(
              "Pharm.D Vault Organization encourages the responsible and ethical use of Artificial Intelligence (AI) tools in education, research, and scientific publishing while maintaining academic integrity and human accountability.",
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
              _PolicyCard(
                icon: Icons.smart_toy_outlined,
                title: "AI Assistance Allowed",
                description:
                    "AI tools may assist with language improvement, grammar correction, formatting, translation, brainstorming, and literature organization.",
              ),

              _PolicyCard(
                icon: Icons.person_outline,
                title: "Human Responsibility",
                description:
                    "Authors remain fully responsible for the accuracy, originality, interpretation, and integrity of every submitted manuscript.",
              ),

              _PolicyCard(
                icon: Icons.visibility_outlined,
                title: "Disclosure Required",
                description:
                    "If AI tools substantially contribute to manuscript preparation, authors should clearly disclose their use in the manuscript.",
              ),

              _PolicyCard(
                icon: Icons.block_outlined,
                title: "No AI Authorship",
                description:
                    "Artificial Intelligence systems cannot be listed as authors because they cannot assume responsibility for published work.",
              ),

              _PolicyCard(
                icon: Icons.fact_check_outlined,
                title: "Verify AI Content",
                description:
                    "Authors must independently verify every AI-generated statement, reference, citation, table, and scientific conclusion.",
              ),

              _PolicyCard(
                icon: Icons.security_outlined,
                title: "Patient Confidentiality",
                description:
                    "Sensitive patient information must never be uploaded to public AI platforms unless fully anonymized and ethically permitted.",
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
                  Icon(
                    Icons.psychology_alt_outlined,
                    color: AppColors.primary,
                    size: 56,
                  ),

                  const SizedBox(height: 20),

                  Text(
                    "Our Position",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 16),

                  Text(
                    "Pharm.D Vault Organization supports the ethical integration of Artificial Intelligence into pharmacy education and research. AI should enhance human expertise—not replace scientific judgment, professional ethics, or critical thinking.",
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

class _PolicyCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _PolicyCard({
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
                child: Icon(icon, size: 30, color: AppColors.primary),
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
