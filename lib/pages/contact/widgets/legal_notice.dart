import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class LegalNotice extends StatelessWidget {
  const LegalNotice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xffF8FAFC),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Center(
        child: SizedBox(
          width: 950,
          child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Legal Notice",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 24),

                  const _LegalItem(
                    icon: Icons.copyright_outlined,
                    title: "Copyright",
                    content:
                        "© 2026 Pharm.D Vault Organization. All rights reserved. Unless otherwise stated, all website content, publications, educational materials, graphics, and branding are the intellectual property of Pharm.D Vault Organization.",
                  ),

                  const Divider(height: 40),

                  const _LegalItem(
                    icon: Icons.gavel_outlined,
                    title: "Disclaimer",
                    content:
                        "The information provided on this website is intended for educational, research, and informational purposes only. It should not be considered a substitute for professional medical, pharmaceutical, or legal advice.",
                  ),

                  const Divider(height: 40),

                  const _LegalItem(
                    icon: Icons.article_outlined,
                    title: "Publications",
                    content:
                        "Authors are responsible for the originality, accuracy, and integrity of the content submitted for publication. The opinions expressed in published articles belong solely to the respective authors.",
                  ),

                  const Divider(height: 40),

                  const _LegalItem(
                    icon: Icons.shield_outlined,
                    title: "Intellectual Property",
                    content:
                        "Unauthorized reproduction, redistribution, or commercial use of any material from this website without prior written permission is prohibited.",
                  ),

                  const Divider(height: 40),

                  const _LegalItem(
                    icon: Icons.balance_outlined,
                    title: "Governing Law",
                    content:
                        "This website and the activities of Pharm.D Vault Organization shall be governed by the applicable laws of the Republic of India.",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _LegalItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String content;

  const _LegalItem({
    required this.icon,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: AppColors.primary.withValues(alpha: 0.12),
          child: Icon(icon, color: AppColors.primary),
        ),

        const SizedBox(width: 20),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 8),

              Text(
                content,
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(height: 1.7),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
