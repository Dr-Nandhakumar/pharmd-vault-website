import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class PublicationCategories extends StatelessWidget {
  const PublicationCategories({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      (Icons.science, "Original Research"),
      (Icons.description, "Review Articles"),
      (Icons.local_hospital, "Clinical Case Reports"),
      (Icons.medical_services, "Clinical Pharmacy"),
      (Icons.biotech, "Pharmacology"),
      (Icons.vaccines, "Pharmacotherapeutics"),
      (Icons.psychology_alt, "AI in Healthcare"),
      (Icons.health_and_safety, "Pharmacovigilance"),
      (Icons.public, "Public Health"),
      (Icons.medication, "Pharmaceutics"),
      (Icons.bloodtype, "Toxicology"),
      (Icons.school, "Pharmacy Education"),
    ];

    return Container(
      width: double.infinity,
      color: const Color(0xffF8FAFC),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Publication Categories",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          Text(
            "We welcome submissions from all major pharmacy and healthcare disciplines.",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),

          const SizedBox(height: 50),

          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: categories.map((category) {
              return _CategoryCard(icon: category.$1, title: category.$2);
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const _CategoryCard({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: AppColors.primary.withValues(alpha: 0.10),
                child: Icon(icon, color: AppColors.primary, size: 30),
              ),

              const SizedBox(height: 20),

              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
