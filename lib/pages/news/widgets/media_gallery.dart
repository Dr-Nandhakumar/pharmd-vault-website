import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class MediaGallery extends StatelessWidget {
  const MediaGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xffF8FAFC),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Media Gallery",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 18),

          SizedBox(
            width: 850,
            child: Text(
              "Browse photographs and media highlights from conferences, workshops, awareness programs, research activities, educational sessions, and organizational events.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),

          const SizedBox(height: 50),

          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: const [
              _GalleryCard(
                title: "Clinical Pharmacy Workshop",
                subtitle: "Workshop • July 2026",
                icon: Icons.medical_services,
              ),

              _GalleryCard(
                title: "Research Seminar",
                subtitle: "Seminar • June 2026",
                icon: Icons.science,
              ),

              _GalleryCard(
                title: "Student Orientation",
                subtitle: "Academic Program",
                icon: Icons.school,
              ),

              _GalleryCard(
                title: "Healthcare Awareness Camp",
                subtitle: "Community Outreach",
                icon: Icons.health_and_safety,
              ),

              _GalleryCard(
                title: "Publication Launch",
                subtitle: "Release",
                icon: Icons.menu_book,
              ),

              _GalleryCard(
                title: "National Webinar",
                subtitle: "Online Event",
                icon: Icons.video_camera_front,
              ),
            ],
          ),

          const SizedBox(height: 45),

          FilledButton.icon(
            onPressed: () => Navigator.pushNamed(context, '/gallery'),
            icon: const Icon(Icons.photo_library),
            label: const Text("View Complete Gallery"),
          ),
        ],
      ),
    );
  }
}

class _GalleryCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const _GalleryCard({
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: Card(
        elevation: 3,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Container(
              height: 190,
              color: const Color(0xffEAF3FF),
              child: Center(
                child: Icon(icon, size: 70, color: AppColors.primary),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    subtitle,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
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
