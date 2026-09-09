import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/utils/responsive.dart';
import '../../../core/widgets/section_title.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool mobile = Responsive.isMobile(context);

    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.value(
          context,
          mobile: 20,
          tablet: 40,
          desktop: 80,
        ),
        vertical: 80,
      ),
      child: Column(
        children: [
          const SectionTitle(
            title: "About Pharm.D Vault",
            subtitle:
                "Pharm.D Vault Organization is dedicated to promoting pharmacy education, ethical research, scientific publications, and academic excellence.",
          ),

          const SizedBox(height: 60),

          mobile
              ? Column(
                  children: const [
                    _InfoCard(
                      icon: Icons.flag,
                      title: "Mission",
                      description:
                          "To support students, researchers and healthcare professionals by providing a trusted publication platform.",
                    ),
                    SizedBox(height: 24),
                    _InfoCard(
                      icon: Icons.visibility,
                      title: "Vision",
                      description:
                          "To become a globally recognized pharmacy organization for quality research and innovation.",
                    ),
                    SizedBox(height: 24),
                    _InfoCard(
                      icon: Icons.emoji_events,
                      title: "Objectives",
                      description:
                          "Encourage scientific writing, ethical publication, academic collaboration and continuous professional development.",
                    ),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Expanded(
                      child: _InfoCard(
                        icon: Icons.flag,
                        title: "Mission",
                        description:
                            "To support students, researchers and healthcare professionals by providing a trusted publication platform.",
                      ),
                    ),
                    SizedBox(width: 30),
                    Expanded(
                      child: _InfoCard(
                        icon: Icons.visibility,
                        title: "Vision",
                        description:
                            "To become a globally recognized pharmacy organization for quality research and innovation.",
                      ),
                    ),
                    SizedBox(width: 30),
                    Expanded(
                      child: _InfoCard(
                        icon: Icons.emoji_events,
                        title: "Objectives",
                        description:
                            "Encourage scientific writing, ethical publication, academic collaboration and continuous professional development.",
                      ),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _InfoCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            CircleAvatar(
              radius: 32,
              backgroundColor: AppColors.primary.withValues(alpha: 0.15),
              child: Icon(icon, color: AppColors.secondary, size: 34),
            ),

            const SizedBox(height: 20),

            Text(title, style: Theme.of(context).textTheme.titleLarge),

            const SizedBox(height: 16),

            Text(
              description,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
