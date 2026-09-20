import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class Announcements extends StatelessWidget {
  const Announcements({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xffF8FAFC),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Announcements",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 18),

          SizedBox(
            width: 850,
            child: Text(
              "Stay informed about notices, recruitment opportunities, editorial board openings, memberships, research collaborations, and important organizational updates.",
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
                _AnnouncementTile(
                  icon: Icons.campaign_outlined,
                  title: "Applications Open for Editorial Board Members",
                  date: "20 July 2026",
                  color: Colors.blue,
                ),

                Divider(height: 1),

                _AnnouncementTile(
                  icon: Icons.groups_outlined,
                  title: "Membership Registration Now Open",
                  date: "18 July 2026",
                  color: Colors.green,
                ),

                Divider(height: 1),

                _AnnouncementTile(
                  icon: Icons.science_outlined,
                  title: "Call for Research Articles - Volume 1",
                  date: "15 July 2026",
                  color: Colors.deepPurple,
                ),

                Divider(height: 1),

                _AnnouncementTile(
                  icon: Icons.event_available_outlined,
                  title: "National Clinical Pharmacy Webinar Registration",
                  date: "12 July 2026",
                  color: Colors.orange,
                ),

                Divider(height: 1),

                _AnnouncementTile(
                  icon: Icons.workspace_premium_outlined,
                  title: "Volunteer Recruitment for Academic Activities",
                  date: "08 July 2026",
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AnnouncementTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String date;
  final Color color;

  const _AnnouncementTile({
    required this.icon,
    required this.title,
    required this.date,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      leading: CircleAvatar(
        backgroundColor: color.withValues(alpha: 0.12),
        child: Icon(icon, color: color),
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 6),
        child: Text(date),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 18),
      onTap: () {},
    );
  }
}
