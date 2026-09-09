import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class WhyChooseUs extends StatelessWidget {
  const WhyChooseUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xffF8FAFC),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Why Choose Pharm.D Vault?",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 16),

          Text(
            "We are committed to empowering pharmacy professionals through education, research, innovation, and collaboration.",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),

          const SizedBox(height: 50),

          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: const [
              _FeatureCard(
                icon: Icons.menu_book_outlined,
                title: "Quality Learning",
                description:
                    "Comprehensive educational resources for Pharm.D students and professionals.",
              ),
              _FeatureCard(
                icon: Icons.science_outlined,
                title: "Research Support",
                description:
                    "Guidance for research writing, publication, and scientific collaboration.",
              ),
              _FeatureCard(
                icon: Icons.psychology_alt_outlined,
                title: "AI Powered Platform",
                description:
                    "Modern AI tools designed to improve pharmacy education and clinical practice.",
              ),
              _FeatureCard(
                icon: Icons.groups_outlined,
                title: "Professional Network",
                description:
                    "Connect with academicians, researchers, clinicians, and healthcare experts.",
              ),
              _FeatureCard(
                icon: Icons.verified_outlined,
                title: "Ethical Standards",
                description:
                    "Every activity follows transparency, research ethics, and academic integrity.",
              ),
              _FeatureCard(
                icon: Icons.public_outlined,
                title: "Global Vision",
                description:
                    "Building an international platform for pharmacy education and healthcare innovation.",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _FeatureCard({
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            children: [
              CircleAvatar(
                radius: 34,
                backgroundColor: AppColors.primary.withValues(alpha: 0.12),
                child: Icon(icon, color: AppColors.primary, size: 34),
              ),

              const SizedBox(height: 20),

              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
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
