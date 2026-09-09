import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String? subtitle;
  final TextAlign textAlign;
  final double maxWidth;

  const SectionTitle({
    super.key,
    required this.title,
    this.subtitle,
    this.textAlign = TextAlign.center,
    this.maxWidth = 700,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Decorative Line
            Container(
              width: 70,
              height: 4,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(10),
              ),
            ),

            const SizedBox(height: 16),

            // Title
            Text(
              title,
              textAlign: textAlign,
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            if (subtitle != null) ...[
              const SizedBox(height: 12),

              Text(
                subtitle!,
                textAlign: textAlign,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
