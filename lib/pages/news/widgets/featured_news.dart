import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class FeaturedNews extends StatelessWidget {
  const FeaturedNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Featured News",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 16),

          SizedBox(
            width: 850,
            child: Text(
              "Explore the latest highlights, important announcements, research activities, collaborations, and achievements from Pharm.D Vault Organization.",
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
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Container(
                  height: 320,
                  width: double.infinity,
                  color: const Color(0xffE8F1FB),
                  child: const Center(
                    child: Icon(
                      Icons.newspaper_rounded,
                      size: 100,
                      color: AppColors.primary,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          "Featured",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      const SizedBox(height: 22),

                      Text(
                        "Pharm.D Vault Organization Begins Its Mission to Advance Pharmacy Education",
                        style: Theme.of(context).textTheme.headlineSmall
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),

                      const SizedBox(height: 16),

                      Text(
                        "The organization is dedicated to advancing pharmacy education, research, clinical practice, scientific publishing, and healthcare innovation through modern technology and collaborative learning.",
                        style: Theme.of(
                          context,
                        ).textTheme.bodyLarge?.copyWith(height: 1.8),
                      ),

                      const SizedBox(height: 24),

                      Wrap(
                        spacing: 20,
                        runSpacing: 12,
                        children: const [
                          _NewsInfo(
                            icon: Icons.calendar_today,
                            text: "July 2026",
                          ),
                          _NewsInfo(icon: Icons.person, text: "Administration"),
                          _NewsInfo(
                            icon: Icons.visibility,
                            text: "Featured Story",
                          ),
                        ],
                      ),

                      const SizedBox(height: 28),

                      FilledButton.icon(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/ai-pharmacy-course'),
                        icon: Icon(Icons.arrow_forward),
                        label: Text("Explore Free AI Course"),
                      ),
                    ],
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

class _NewsInfo extends StatelessWidget {
  final IconData icon;
  final String text;

  const _NewsInfo({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 18, color: AppColors.primary),
        const SizedBox(width: 8),
        Text(text),
      ],
    );
  }
}

