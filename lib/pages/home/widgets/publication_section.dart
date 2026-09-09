import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/section_title.dart';
import '../../../core/utils/responsive.dart';

class PublicationSection extends StatelessWidget {
  const PublicationSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool mobile = Responsive.isMobile(context);

    return Container(
      width: double.infinity,
      color: AppColors.sectionBackground,
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
            title: "Latest Publications",
            subtitle:
                "Explore recent research articles and scientific publications published through Pharm.D Vault Organization.",
          ),

          const SizedBox(height: 50),

          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: mobile ? 1 : 3,
            crossAxisSpacing: 24,
            mainAxisSpacing: 24,
            childAspectRatio: mobile ? 1.6 : 1.05,
            children: const [
              PublicationCard(
                title: "Clinical Pharmacy",
                category: "Review Article",
                description:
                    "Evidence-based clinical pharmacy research and therapeutic advancements.",
              ),
              PublicationCard(
                title: "Pharmacology",
                category: "Original Research",
                description:
                    "Research focusing on drug mechanisms, efficacy and safety.",
              ),
              PublicationCard(
                title: "Pharmaceutical Chemistry",
                category: "Case Study",
                description:
                    "Innovations in medicinal chemistry and pharmaceutical sciences.",
              ),
            ],
          ),

          const SizedBox(height: 50),

          CustomButton(
            text: "View All Publications",
            icon: Icons.arrow_forward,
            onPressed: () => Navigator.pushNamed(context, '/publications'),
          ),
        ],
      ),
    );
  }
}

class PublicationCard extends StatelessWidget {
  final String title;
  final String category;
  final String description;

  const PublicationCard({
    super.key,
    required this.title,
    required this.category,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.primary.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                category,
                style: TextStyle(
                  color: AppColors.secondary,
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
            ),

            const SizedBox(height: 20),

            Text(title, style: Theme.of(context).textTheme.titleLarge),

            const SizedBox(height: 16),

            Expanded(
              child: Text(
                description,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),

            const SizedBox(height: 20),

            TextButton.icon(
              onPressed: () => Navigator.pushNamed(context, '/publications'),
              icon: const Icon(Icons.visibility_outlined),
              label: const Text("Read More"),
            ),
          ],
        ),
      ),
    );
  }
}
