import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/utils/app_actions.dart';

class GuidelinesHero extends StatelessWidget {
  const GuidelinesHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 100),
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
          constraints: const BoxConstraints(maxWidth: 1100),
          child: Column(
            children: [
              const Icon(
                Icons.menu_book_rounded,
                size: 90,
                color: Colors.white,
              ),

              const SizedBox(height: 30),

              Text(
                "Author Guidelines",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 25),

              Text(
                "Comprehensive guidelines for preparing, submitting, and publishing high-quality scientific manuscripts through Pharm.D Vault Organization.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white.withValues(alpha: 0.92),
                  height: 1.7,
                ),
              ),

              const SizedBox(height: 45),

              Wrap(
                spacing: 18,
                runSpacing: 18,
                alignment: WrapAlignment.center,
                children: [
                  FilledButton.icon(
                    onPressed: () => AppActions.composeEmail(
                      context,
                      subject: 'Request: Author guidelines',
                      body: 'Please send me the current author guidelines.',
                    ),
                    icon: const Icon(Icons.download),
                    label: const Text("Download Guidelines"),
                  ),

                  OutlinedButton.icon(
                    onPressed: () => Navigator.pushNamed(context, '/contact'),
                    icon: const Icon(Icons.upload_file),
                    label: const Text("Submit Article"),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      side: const BorderSide(color: Colors.white),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 60),

              Wrap(
                spacing: 40,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                children: const [
                  _HeroInfo(
                    icon: Icons.description,
                    title: "Manuscript Format",
                  ),

                  _HeroInfo(icon: Icons.verified, title: "Publication Ethics"),

                  _HeroInfo(icon: Icons.fact_check, title: "Peer Review"),

                  _HeroInfo(
                    icon: Icons.workspace_premium,
                    title: "Quality Standards",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HeroInfo extends StatelessWidget {
  final IconData icon;
  final String title;

  const _HeroInfo({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.white, size: 24),

        const SizedBox(width: 10),

        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
