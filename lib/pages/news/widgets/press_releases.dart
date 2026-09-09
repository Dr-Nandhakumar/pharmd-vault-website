import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class PressReleases extends StatelessWidget {
  const PressReleases({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Press Releases",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 18),

          SizedBox(
            width: 850,
            child: Text(
              "Official statements, media announcements, institutional collaborations, and important organizational communications released by Pharm.D Vault Organization.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),

          const SizedBox(height: 50),

          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: const [
                _PressTile(
                  title: "Official Launch of Pharm.D Vault Organization",
                  date: "20 July 2026",
                ),

                Divider(height: 1),

                _PressTile(
                  title:
                      "Call for Research Collaboration with Healthcare Professionals",
                  date: "15 July 2026",
                ),

                Divider(height: 1),

                _PressTile(
                  title: "Editorial Board Recruitment Announcement",
                  date: "12 July 2026",
                ),

                Divider(height: 1),

                _PressTile(
                  title: "Launch of AI-Powered Pharmacy Education Platform",
                  date: "08 July 2026",
                ),

                Divider(height: 1),

                _PressTile(
                  title: "Upcoming National Clinical Pharmacy Webinar",
                  date: "02 July 2026",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PressTile extends StatelessWidget {
  final String title;
  final String date;

  const _PressTile({required this.title, required this.date});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: AppColors.primary.withValues(alpha: 0.12),
        child: const Icon(Icons.newspaper, color: AppColors.primary),
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 6),
        child: Text(date),
      ),
      trailing: const Icon(Icons.open_in_new),
      onTap: () {},
    );
  }
}
