import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class PlagiarismPolicy extends StatelessWidget {
  const PlagiarismPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xffF8FAFC),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Plagiarism Policy",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 18),

          SizedBox(
            width: 900,
            child: Text(
              "Pharm.D Vault Organization follows a strict zero-tolerance policy towards plagiarism and academic misconduct. Every submitted manuscript must represent original scholarly work.",
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
                icon: Icons.description_outlined,
                title: "Original Work",
                description:
                    "All manuscripts must be completely original and should not copy content from published or unpublished sources.",
              ),

              _PolicyCard(
                icon: Icons.content_copy_outlined,
                title: "Proper Citation",
                description:
                    "Any ideas, figures, tables, or text from other sources must be appropriately cited using accepted referencing styles.",
              ),

              _PolicyCard(
                icon: Icons.warning_amber_rounded,
                title: "Self-Plagiarism",
                description:
                    "Authors should not submit previously published work or reuse substantial portions of their own publications without disclosure.",
              ),

              _PolicyCard(
                icon: Icons.search_outlined,
                title: "Similarity Screening",
                description:
                    "Submitted manuscripts may be checked using plagiarism detection software before peer review.",
              ),

              _PolicyCard(
                icon: Icons.block_outlined,
                title: "Duplicate Submission",
                description:
                    "Simultaneous submission of the same manuscript to multiple journals or publishers is strictly prohibited.",
              ),

              _PolicyCard(
                icon: Icons.gavel_outlined,
                title: "Editorial Action",
                description:
                    "Any confirmed plagiarism may lead to immediate rejection, withdrawal, or future submission restrictions.",
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
                    Icons.verified_outlined,
                    size: 52,
                    color: AppColors.primary,
                  ),

                  const SizedBox(height: 20),

                  Text(
                    "Author Declaration",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 16),

                  Text(
                    "By submitting a manuscript to Pharm.D Vault Organization, authors confirm that the work is original, has not been published elsewhere, is not under consideration by another publisher, and complies with international standards of academic integrity.",
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
