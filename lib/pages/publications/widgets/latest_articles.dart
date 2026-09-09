import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/utils/app_actions.dart';

class LatestArticles extends StatelessWidget {
  const LatestArticles({super.key});

  static const _articles = [
    _Article('Artificial Intelligence in Clinical Pharmacy Practice', 'Evidence Based Review Draft', 'assets/documents/publications/review-drafts/AI_in_Clinical_Pharmacy_Practice_Review_Draft.pdf'),
    _Article('Recent Advances in Pharmacovigilance', 'Evidence Based Review Draft', 'assets/documents/publications/review-drafts/Recent_Advances_in_Pharmacovigilance_Review_Draft.pdf'),
    _Article('Role of Clinical Pharmacists in ICU', 'Evidence Based Review Draft', 'assets/documents/publications/review-drafts/Role_of_Clinical_Pharmacists_in_ICU_Review_Draft.pdf'),
    _Article('Clinical Case Report on Heart Failure', 'Demo Training Only', 'assets/documents/publications/demo-training/Simulated_Heart_Failure_Case_Report_Demo.pdf'),
    _Article('Clinical Case Report on Organophosphate Poisoning', 'Demo Training Only', 'assets/documents/publications/demo-training/Simulated_Organophosphate_Poisoning_Case_Report_Demo.pdf'),
    _Article('Medication Safety and Pharmacovigilance in Hospitals', 'Demo Training Only', 'assets/documents/publications/demo-training/Simulated_Medication_Safety_and_Pharmacovigilance_Demo.pdf'),
    _Article('Clinical Pharmacy Research at Hospital Discharge', 'Demo Training Only', 'assets/documents/publications/demo-training/Simulated_Clinical_Pharmacy_Research_Demo.pdf'),
    _Article('Pharmacology Concentration Response Research', 'Demo Training Only', 'assets/documents/publications/demo-training/Simulated_Pharmacology_Research_Demo.pdf'),
    _Article('Pharmaceutical Chemistry Analytical Method Validation', 'Demo Training Only', 'assets/documents/publications/demo-training/Simulated_Pharmaceutical_Chemistry_Research_Demo.pdf'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text('Publication Library', style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: AppColors.primary, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          Text('Download the exact files hosted by this website. Demo training files contain fictional data and are not for submission or clinical use.', textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 42),
          ..._articles.map((article) => Padding(padding: const EdgeInsets.only(bottom: 20), child: _ArticleCard(article: article))),
        ],
      ),
    );
  }
}

class _ArticleCard extends StatelessWidget {
  final _Article article;
  const _ArticleCard({required this.article});

  @override
  Widget build(BuildContext context) {
    final isDemo = article.category == 'Demo Training Only';
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: const EdgeInsets.all(28),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8), decoration: BoxDecoration(color: (isDemo ? Colors.orange : AppColors.primary).withValues(alpha: 0.10), borderRadius: BorderRadius.circular(20)), child: Text(article.category, style: TextStyle(color: isDemo ? Colors.deepOrange : AppColors.primary, fontWeight: FontWeight.bold))),
          const SizedBox(height: 18),
          Text(article.title, style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          const Text('Author: Dr. K. Nandhakumar'),
          const SizedBox(height: 22),
          FilledButton.icon(onPressed: () => AppActions.openWebsiteAsset(context, article.assetPath), icon: const Icon(Icons.download), label: const Text('Open PDF')),
        ]),
      ),
    );
  }
}

class _Article {
  final String title;
  final String category;
  final String assetPath;
  const _Article(this.title, this.category, this.assetPath);
}
