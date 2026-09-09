import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class AboutHero extends StatelessWidget {
  const AboutHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 100),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.primary,
            AppColors.primary.withValues(alpha: 0.85),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1100),
          child: Column(
            children: [
              const Icon(Icons.groups_rounded, color: Colors.white, size: 90),

              const SizedBox(height: 25),

              Text(
                "About Pharm.D Vault Organization",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 25),

              SizedBox(
                width: 900,
                child: Text(
                  "Pharm.D Vault Organization is a non-profit educational, research, scientific, healthcare, and social welfare organization dedicated to advancing pharmacy education, clinical practice, innovation, and evidence-based healthcare worldwide.",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.white.withValues(alpha: 0.92),
                    height: 1.7,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 20,
                children: const [
                  _StatCard("2026", "Founded"),
                  _StatCard("Global", "Vision"),
                  _StatCard("Research", "Focused"),
                  _StatCard("Non-Profit", "Organization"),
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

  const _StatCard(this.value, this.label);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      padding: const EdgeInsets.all(20),
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
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(label, style: const TextStyle(color: Colors.white70)),
        ],
      ),
    );
  }
}
