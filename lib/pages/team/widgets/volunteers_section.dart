import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class VolunteersSection extends StatelessWidget {
  const VolunteersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xffF8FAFC),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Volunteers & Student Coordinators",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 18),

          SizedBox(
            width: 900,
            child: Text(
              "Our volunteers and student coordinators play an essential role in organizing educational programs, research activities, awareness campaigns, conferences, and community outreach initiatives.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),

          const SizedBox(height: 50),

          Wrap(
            spacing: 28,
            runSpacing: 28,
            alignment: WrapAlignment.center,
            children: const [
              _VolunteerCard(role: "Campus Ambassador"),
              _VolunteerCard(role: "Student Coordinator"),
              _VolunteerCard(role: "Research Volunteer"),
              _VolunteerCard(role: "Event Coordinator"),
              _VolunteerCard(role: "Media & Design Team"),
              _VolunteerCard(role: "Technical Support Team"),
            ],
          ),
        ],
      ),
    );
  }
}

class _VolunteerCard extends StatelessWidget {
  final String role;

  const _VolunteerCard({required this.role});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              CircleAvatar(
                radius: 46,
                backgroundColor: AppColors.primary.withValues(alpha: 0.10),
                child: const Icon(
                  Icons.volunteer_activism_outlined,
                  color: AppColors.primary,
                  size: 42,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                role,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),

              const SizedBox(height: 14),

              Text(
                "Position Available",
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
              ),

              const SizedBox(height: 12),

              Text(
                "Become a part of Pharm.D Vault Organization and contribute to education, research, and healthcare initiatives.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  height: 1.6,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
