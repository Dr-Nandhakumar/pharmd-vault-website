import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class CopyrightPolicy extends StatelessWidget {
  const CopyrightPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Copyright Policy",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 18),

          SizedBox(
            width: 900,
            child: Text(
              "Authors retain responsibility for the originality of their work while granting Pharm.D Vault Organization the right to publish and archive accepted manuscripts.",
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(height: 1.6),
            ),
          ),

          const SizedBox(height: 60),

          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: const [
              _PolicyCard(
                icon: Icons.copyright_outlined,
                title: "Author Ownership",
                description:
                    "Authors confirm that the submitted work is original and that they possess the necessary publication rights.",
              ),

              _PolicyCard(
                icon: Icons.publish_outlined,
                title: "Publishing Rights",
                description:
                    "Upon acceptance, authors grant Pharm.D Vault Organization permission to publish, distribute, and archive the article.",
              ),

              _PolicyCard(
                icon: Icons.person_search_outlined,
                title: "Proper Attribution",
                description:
                    "All published materials must acknowledge the original authors. Unauthorized reproduction without attribution is prohibited.",
              ),

              _PolicyCard(
                icon: Icons.gavel_outlined,
                title: "Copyright Compliance",
                description:
                    "Authors must ensure that figures, tables, and third-party content comply with copyright laws and include appropriate permissions.",
              ),

              _PolicyCard(
                icon: Icons.shield_outlined,
                title: "Integrity Protection",
                description:
                    "Published articles may not be altered or misrepresented in ways that compromise scientific integrity.",
              ),

              _PolicyCard(
                icon: Icons.library_books_outlined,
                title: "Archiving",
                description:
                    "Accepted publications may be permanently archived within the Pharm.D Vault digital repository for educational purposes.",
              ),
            ],
          ),

          const SizedBox(height: 50),

          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Icon(Icons.info_outline, size: 54, color: AppColors.primary),

                  const SizedBox(height: 18),

                  Text(
                    "Author Declaration",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 16),

                  Text(
                    "By submitting a manuscript, authors confirm that the work is original, has not been published elsewhere, is not under consideration by another publisher, and complies with all applicable copyright and ethical standards.",
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
      width: 320,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: AppColors.primary.withValues(alpha: 0.12),
                child: Icon(icon, color: AppColors.primary, size: 32),
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
