import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class UpcomingEvents extends StatelessWidget {
  const UpcomingEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Upcoming Events",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 16),

          SizedBox(
            width: 850,
            child: Text(
              "Participate in our upcoming educational programs, research workshops, conferences, webinars, and professional development activities.",
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
              _EventCard(
                date: "05 Aug 2026",
                title: "National Clinical Pharmacy Webinar",
                location: "Online",
                type: "Webinar",
                description:
                    "Interactive webinar covering evidence-based clinical pharmacy practice and patient care.",
              ),

              _EventCard(
                date: "18 Aug 2026",
                title: "Research Methodology Workshop",
                location: "Chennai",
                type: "Workshop",
                description:
                    "Hands-on training on research design, manuscript writing, and publication ethics.",
              ),

              _EventCard(
                date: "02 Sept 2026",
                title: "Pharmacy Innovation Summit",
                location: "Bengaluru",
                type: "Conference",
                description:
                    "National conference discussing AI, digital health, clinical pharmacy, and pharmaceutical innovation.",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _EventCard extends StatelessWidget {
  final String date;
  final String title;
  final String location;
  final String type;
  final String description;

  const _EventCard({
    required this.date,
    required this.title,
    required this.location,
    required this.type,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  date,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 18),

              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: AppColors.primary,
                    size: 18,
                  ),
                  const SizedBox(width: 8),
                  Text(location),
                ],
              ),

              const SizedBox(height: 12),

              Row(
                children: [
                  const Icon(
                    Icons.event_note_outlined,
                    color: AppColors.primary,
                    size: 18,
                  ),
                  const SizedBox(width: 8),
                  Text(type),
                ],
              ),

              const SizedBox(height: 20),

              Text(
                description,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(height: 1.6),
              ),

              const SizedBox(height: 24),

              FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.event_available),
                label: const Text("Register"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
