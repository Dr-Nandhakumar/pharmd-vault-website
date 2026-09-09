import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class SubmitArticleCTA extends StatelessWidget {
  const SubmitArticleCTA({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 90),
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
          constraints: const BoxConstraints(maxWidth: 1000),
          child: Column(
            children: [
              const Icon(
                Icons.upload_file_rounded,
                color: Colors.white,
                size: 80,
              ),

              const SizedBox(height: 25),

              Text(
                "Ready to Publish Your Research?",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                "Share your research, clinical case reports, review articles, and innovative healthcare ideas with the global pharmacy community through Pharm.D Vault Organization.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white.withValues(alpha: 0.90),
                  height: 1.7,
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
                    icon: const Icon(Icons.upload),
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
                    onPressed: () => Navigator.pushNamed(context, '/contact'),
                    icon: const Icon(Icons.email_outlined),
                    label: const Text("Contact Editorial Office"),
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

              const SizedBox(height: 50),

              Wrap(
                spacing: 40,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                children: const [
                  _InfoItem(
                    icon: Icons.schedule,
                    text: "Fast Editorial Review",
                  ),

                  _InfoItem(
                    icon: Icons.verified,
                    text: "Ethical Publication Process",
                  ),

                  _InfoItem(
                    icon: Icons.workspace_premium,
                    text: "Publication Certificate",
                  ),

                  _InfoItem(icon: Icons.public, text: "Global Accessibility"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _InfoItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const _InfoItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.white, size: 24),

        const SizedBox(width: 10),

        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
