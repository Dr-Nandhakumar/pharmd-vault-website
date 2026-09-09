import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class IndexingSection extends StatelessWidget {
  const IndexingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xffF8FAFC),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Indexing & Visibility",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 18),

          SizedBox(
            width: 850,
            child: Text(
              "Pharm.D Vault Organization is committed to improving the visibility, accessibility, and global impact of published research. Our long-term objective is to meet the standards required for indexing in recognized academic databases.",
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
              _IndexCard(
                icon: Icons.public,
                title: "Open Access",
                description:
                    "Articles are freely accessible to researchers and healthcare professionals worldwide.",
              ),

              _IndexCard(
                icon: Icons.search,
                title: "Search Visibility",
                description:
                    "Optimized for search engines to improve discoverability of research articles.",
              ),

              _IndexCard(
                icon: Icons.auto_graph,
                title: "Citation Growth",
                description:
                    "Encouraging quality research that contributes to higher citation impact.",
              ),

              _IndexCard(
                icon: Icons.workspace_premium,
                title: "Future Indexing",
                description:
                    "Working towards eligibility for major academic indexing databases.",
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
                  Icon(Icons.info_outline, size: 45, color: AppColors.primary),

                  const SizedBox(height: 20),

                  Text(
                    "Future Indexing Goals",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 18),

                  Text(
                    "As the organization grows, Pharm.D Vault aims to fulfill the quality standards necessary for inclusion in internationally recognized indexing services. Indexing will only be claimed after official acceptance by the respective organizations.",
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

class _IndexCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _IndexCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 270,
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
