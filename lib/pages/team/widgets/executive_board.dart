import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class ExecutiveBoard extends StatelessWidget {
  const ExecutiveBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xffF8FAFC),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Executive Board",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 16),

          SizedBox(
            width: 900,
            child: Text(
              "The Executive Board oversees the strategic direction, governance, and day-to-day leadership of Pharm.D Vault Organization.",
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
              _BoardCard(designation: "President", name: "Dr. K. Nandhakumar"),

              _BoardCard(designation: "Secretary", name: "Dr. Hariharan V"),

              _BoardCard(designation: "Vice President", name: "Dr. Ranjithkumar.V", qualification: "Pharm.D, Rph"),

              _BoardCard(designation: "Research Coordinator", name: "Mr. Parthipan.M", qualification: "M.Pharm"),
            ],
          ),
        ],
      ),
    );
  }
}

class _BoardCard extends StatelessWidget {
  final String designation;
  final String name;
  final String qualification;

  const _BoardCard({required this.designation, required this.name, this.qualification = ''});

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
                radius: 48,
                backgroundColor: AppColors.primary.withValues(alpha: 0.10),
                child: const Icon(
                  Icons.person,
                  size: 46,
                  color: AppColors.primary,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                designation,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                name,
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
              ),

              if (qualification.isNotEmpty) ...[
                const SizedBox(height: 8),
                Text(qualification, textAlign: TextAlign.center),
              ],

              const SizedBox(height: 14),

              Text(
                "Official Executive Board Member",
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: Colors.grey[700]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
