import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class WhoWeAre extends StatelessWidget {
  const WhoWeAre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 420,
                  decoration: BoxDecoration(
                    color: AppColors.primary.withValues(alpha: 0.08),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: const Icon(
                    Icons.local_hospital_rounded,
                    size: 180,
                    color: AppColors.primary,
                  ),
                ),
              ),

              const SizedBox(width: 50),

              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Who We Are",
                      style: Theme.of(context).textTheme.headlineMedium
                          ?.copyWith(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                    ),

                    const SizedBox(height: 25),

                    Text(
                      "Pharm.D Vault Organization is an independent non-profit organization established to support pharmacy students, educators, researchers, healthcare professionals, and institutions through education, research, publications, innovation, and professional collaboration.",
                      style: Theme.of(
                        context,
                      ).textTheme.bodyLarge?.copyWith(height: 1.8),
                    ),

                    const SizedBox(height: 20),

                    Text(
                      "We believe that quality education, ethical research, digital innovation, and collaborative learning are essential to improving healthcare systems and advancing the pharmacy profession worldwide.",
                      style: Theme.of(
                        context,
                      ).textTheme.bodyLarge?.copyWith(height: 1.8),
                    ),

                    const SizedBox(height: 30),

                    const _Bullet(
                      "Promote pharmacy education and lifelong learning",
                    ),
                    const _Bullet(
                      "Support ethical scientific research and publications",
                    ),
                    const _Bullet(
                      "Build international academic collaborations",
                    ),
                    const _Bullet("Encourage innovation in healthcare and AI"),
                    const _Bullet(
                      "Improve patient care through clinical pharmacy",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Bullet extends StatelessWidget {
  final String text;

  const _Bullet(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        children: [
          const Icon(Icons.check_circle, color: AppColors.primary),
          const SizedBox(width: 12),
          Expanded(
            child: Text(text, style: Theme.of(context).textTheme.bodyLarge),
          ),
        ],
      ),
    );
  }
}
