import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class LatestNews extends StatelessWidget {
  const LatestNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xffF8FAFC),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Latest News",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 16),

          SizedBox(
            width: 850,
            child: Text(
              "Stay informed with the latest updates, educational activities, publications, workshops, collaborations, and organizational announcements.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),

          const SizedBox(height: 50),

          Wrap(
            spacing: 30,
            runSpacing: 30,
            alignment: WrapAlignment.center,
            children: const [
              _NewsCard(
                title: "Research Article Submission Portal Open",
                category: "Publication",
                date: "18 July 2026",
                description:
                    "Authors can now submit manuscripts through the official Pharm.D Vault publication system.",
              ),

              _NewsCard(
                title: "Clinical Pharmacy Webinar Announced",
                category: "Event",
                date: "14 July 2026",
                description:
                    "A national webinar on Clinical Pharmacy Practice will be conducted for Pharm.D students.",
              ),

              _NewsCard(
                title: "Editorial Board Applications Invited",
                category: "Organization",
                date: "10 July 2026",
                description:
                    "Applications are now open for Editorial Board Members and Scientific Reviewers.",
              ),

              _NewsCard(
                title: "AI Tools Added for Students",
                category: "Technology",
                date: "05 July 2026",
                description:
                    "New AI-powered educational tools have been introduced to enhance pharmacy learning.",
              ),

              _NewsCard(
                title: "Research Collaboration Started",
                category: "Research",
                date: "01 July 2026",
                description:
                    "Pharm.D Vault begins collaborative research initiatives with healthcare professionals.",
              ),

              _NewsCard(
                title: "Membership Registration Open",
                category: "Membership",
                date: "28 June 2026",
                description:
                    "Students, faculty members, and researchers can now register as official members.",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _NewsCard extends StatelessWidget {
  final String title;
  final String category;
  final String date;
  final String description;

  const _NewsCard({
    required this.title,
    required this.category,
    required this.date,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              color: const Color(0xffEAF2FF),
              child: const Center(
                child: Icon(
                  Icons.article_rounded,
                  size: 70,
                  color: AppColors.primary,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      category,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_today,
                        size: 16,
                        color: AppColors.primary,
                      ),
                      const SizedBox(width: 8),
                      Text(date),
                    ],
                  ),

                  const SizedBox(height: 16),

                  Text(
                    description,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium?.copyWith(height: 1.6),
                  ),

                  const SizedBox(height: 22),

                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward),
                    label: const Text("Read More"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
