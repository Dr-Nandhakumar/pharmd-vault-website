import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/utils/app_actions.dart';

class FeaturedPublications extends StatelessWidget {
  const FeaturedPublications({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Featured Publications",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 15),

          Text(
            "Open completed evidence based review drafts prepared by Pharm.D Vault Organization.",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),

          const SizedBox(height: 50),

          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: const [
              _PublicationCard(
                title: "Artificial Intelligence in Clinical Pharmacy Practice",
                category: "Evidence Based Review Draft",
                author: "Dr. K. Nandhakumar",
                year: "Available now",
                icon: Icons.psychology_alt,
                assetPath: 'assets/documents/publications/review-drafts/AI_in_Clinical_Pharmacy_Practice_Review_Draft.pdf',
              ),

              _PublicationCard(
                title: "Recent Advances in Pharmacovigilance",
                category: "Evidence Based Review Draft",
                author: "Dr. K. Nandhakumar",
                year: "Available now",
                icon: Icons.health_and_safety,
                assetPath: 'assets/documents/publications/review-drafts/Recent_Advances_in_Pharmacovigilance_Review_Draft.pdf',
              ),

              _PublicationCard(
                title: "Role of Clinical Pharmacists in ICU",
                category: "Evidence Based Review Draft",
                author: "Dr. K. Nandhakumar",
                year: "Available now",
                icon: Icons.medical_services_outlined,
                assetPath: 'assets/documents/publications/review-drafts/Role_of_Clinical_Pharmacists_in_ICU_Review_Draft.pdf',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _PublicationCard extends StatelessWidget {
  final String title;
  final String category;
  final String author;
  final String year;
  final IconData icon;
  final String assetPath;

  const _PublicationCard({
    required this.title,
    required this.category,
    required this.author,
    required this.year,
    required this.icon,
    required this.assetPath,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: AppColors.primary.withValues(alpha: 0.12),
                child: Icon(icon, color: AppColors.primary),
              ),

              const SizedBox(height: 24),

              Text(
                category,
                style: TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 18),

              Text(
                "Author: $author",
                style: Theme.of(context).textTheme.bodyMedium,
              ),

              const SizedBox(height: 8),

              Text(
                "Status: $year",
                style: Theme.of(context).textTheme.bodyMedium,
              ),

              const SizedBox(height: 25),

              FilledButton.icon(
                onPressed: () => AppActions.openWebsiteAsset(context, assetPath),
                icon: const Icon(Icons.visibility),
                label: const Text("Open PDF"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
