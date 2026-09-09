import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class NewsHero extends StatelessWidget {
  const NewsHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 90),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primary, Color(0xff0F4C81)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          Text(
            "News & Announcements",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          SizedBox(
            width: 900,
            child: Text(
              "Stay updated with the latest news, research activities, official announcements, educational programs, conferences, workshops, publications, and organizational achievements of Pharm.D Vault Organization.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.white70,
                height: 1.6,
              ),
            ),
          ),

          const SizedBox(height: 40),

          Wrap(
            alignment: WrapAlignment.center,
            spacing: 18,
            runSpacing: 18,
            children: [
              FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.campaign_outlined),
                label: const Text("Latest Updates"),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: const BorderSide(color: Colors.white),
                ),
                icon: const Icon(Icons.event_available),
                label: const Text("Upcoming Events"),
              ),
            ],
          ),

          const SizedBox(height: 60),

          Wrap(
            alignment: WrapAlignment.center,
            spacing: 20,
            runSpacing: 20,
            children: const [
              _HeroStat(number: "100+", label: "News Articles"),
              _HeroStat(number: "25+", label: "Events Conducted"),
              _HeroStat(number: "500+", label: "Community Members"),
              _HeroStat(number: "Global", label: "Reach"),
            ],
          ),
        ],
      ),
    );
  }
}

class _HeroStat extends StatelessWidget {
  final String number;
  final String label;

  const _HeroStat({required this.number, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.white24),
      ),
      child: Column(
        children: [
          Text(
            number,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: Colors.white70),
          ),
        ],
      ),
    );
  }
}
