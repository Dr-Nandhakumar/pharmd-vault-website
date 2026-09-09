import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class PublicationsHero extends StatelessWidget {
  const PublicationsHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 100),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.primary,
            AppColors.primary.withValues(alpha: 0.90),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            children: [
              const Icon(Icons.article_rounded, color: Colors.white, size: 90),

              const SizedBox(height: 25),

              Text(
                "Research Publications",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: 900,
                child: Text(
                  "Publish high-quality research, clinical case reports, review articles, and innovative healthcare studies with Pharm.D Vault Organization.",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.white.withValues(alpha: 0.90),
                    height: 1.7,
                  ),
                ),
              ),

              const SizedBox(height: 45),

              Wrap(
                spacing: 20,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () => Navigator.pushNamed(context, '/contact'),
                    icon: const Icon(Icons.upload_file),
                    label: const Text("Submit Article"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: AppColors.primary,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 28,
                        vertical: 18,
                      ),
                    ),
                  ),

                  OutlinedButton.icon(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/publications'),
                    icon: const Icon(Icons.menu_book),
                    label: const Text("Browse Publications"),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      side: const BorderSide(color: Colors.white),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 28,
                        vertical: 18,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 60),

              Wrap(
                spacing: 24,
                runSpacing: 24,
                alignment: WrapAlignment.center,
                children: const [
                  _StatCard(value: "100+", label: "Research Articles"),

                  _StatCard(value: "50+", label: "Case Reports"),

                  _StatCard(value: "25+", label: "Review Articles"),

                  _StatCard(value: "Global", label: "Research Network"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String value;
  final String label;

  const _StatCard({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
