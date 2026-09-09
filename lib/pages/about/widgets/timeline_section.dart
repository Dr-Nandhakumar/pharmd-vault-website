import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class TimelineSection extends StatelessWidget {
  const TimelineSection({super.key});

  @override
  Widget build(BuildContext context) {
    final events = [
      "Organization Founded",
      "Educational Platform",
      "Research Publications",
      "Student Community",
      "International Collaboration",
      "Future Global Expansion",
    ];

    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Organization Roadmap",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 60),

          Wrap(
            alignment: WrapAlignment.center,
            spacing: 24,
            runSpacing: 24,
            children: List.generate(events.length, (index) {
              return SizedBox(
                width: 250,
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(28),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: AppColors.primary,
                          child: Text(
                            "${index + 1}",
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),

                        const SizedBox(height: 20),

                        Text(
                          events[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
