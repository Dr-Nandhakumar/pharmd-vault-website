import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class OfficeLocation extends StatelessWidget {
  const OfficeLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xffF8FAFC),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Office Location",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 18),

          SizedBox(
            width: 850,
            child: Text(
              "Visit our office or contact us for academic collaborations, research support, publications, memberships, and organizational inquiries.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),

          const SizedBox(height: 50),

          Wrap(
            spacing: 40,
            runSpacing: 40,
            crossAxisAlignment: WrapCrossAlignment.start,
            alignment: WrapAlignment.center,
            children: [
              Container(
                width: 520,
                height: 360,
                decoration: BoxDecoration(
                  color: const Color(0xffEAF3FF),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.map, size: 90, color: AppColors.primary),

                      SizedBox(height: 20),

                      Text(
                        "Google Maps",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        "Map Integration\nComing Soon",
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                width: 420,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Registered Office",
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),

                    const SizedBox(height: 25),

                    const _InfoTile(
                      icon: Icons.location_on,
                      title: "Address",
                      value:
                          "Pharm.D Vault Organization\nDharmapuri District\nTamil Nadu\nIndia",
                    ),

                    const SizedBox(height: 20),

                    const _InfoTile(
                      icon: Icons.access_time,
                      title: "Office Hours",
                      value: "Monday - Saturday\n09:00 AM - 06:00 PM",
                    ),

                    const SizedBox(height: 20),

                    const _InfoTile(
                      icon: Icons.directions,
                      title: "Nearest Landmark",
                      value:
                          "Information will be updated after office establishment.",
                    ),

                    const SizedBox(height: 20),

                    FilledButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.navigation),
                      label: const Text("Get Directions"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const _InfoTile({
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: AppColors.primary.withValues(alpha: 0.12),
          child: Icon(icon, color: AppColors.primary),
        ),

        const SizedBox(width: 18),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 6),

              Text(
                value,
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(height: 1.6),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
