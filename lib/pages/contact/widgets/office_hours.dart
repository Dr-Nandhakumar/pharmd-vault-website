import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class OfficeHours extends StatelessWidget {
  const OfficeHours({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xffF8FAFC),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Office Hours",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 18),

          SizedBox(
            width: 850,
            child: Text(
              "Our administrative team is available during the following hours to assist with publications, memberships, collaborations, and general inquiries.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),

          const SizedBox(height: 50),

          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Padding(
              padding: const EdgeInsets.all(36),
              child: Column(
                children: const [
                  _DayTile(day: "Monday", time: "09:00 AM – 06:00 PM"),

                  Divider(),

                  _DayTile(day: "Tuesday", time: "09:00 AM – 06:00 PM"),

                  Divider(),

                  _DayTile(day: "Wednesday", time: "09:00 AM – 06:00 PM"),

                  Divider(),

                  _DayTile(day: "Thursday", time: "09:00 AM – 06:00 PM"),

                  Divider(),

                  _DayTile(day: "Friday", time: "09:00 AM – 06:00 PM"),

                  Divider(),

                  _DayTile(day: "Saturday", time: "09:00 AM – 01:00 PM"),

                  Divider(),

                  _DayTile(day: "Sunday", time: "Closed", closed: true),
                ],
              ),
            ),
          ),

          const SizedBox(height: 35),

          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.info_outline, color: AppColors.primary),
                const SizedBox(width: 12),
                Flexible(
                  child: Text(
                    "Responses to emails and contact form submissions are typically provided within 1–2 business days.",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _DayTile extends StatelessWidget {
  final String day;
  final String time;
  final bool closed;

  const _DayTile({required this.day, required this.time, this.closed = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Row(
        children: [
          Expanded(
            child: Text(
              day,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),

          Text(
            time,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: closed ? Colors.red : Colors.green,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
