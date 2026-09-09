import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class LegalStatus extends StatelessWidget {
  const LegalStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Legal Status",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 16),

          Text(
            "Pharm.D Vault Organization is committed to operating with transparency, integrity, and compliance with applicable laws and regulations.",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),

          const SizedBox(height: 50),

          Container(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: Column(
                  children: [
                    _infoRow(
                      Icons.business,
                      "Organization Name",
                      "Pharm.D Vault Organization",
                    ),

                    const Divider(height: 35),

                    _infoRow(
                      Icons.account_balance,
                      "Organization Type",
                      "Non-Profit Educational & Research Organization",
                    ),

                    const Divider(height: 35),

                    _infoRow(
                      Icons.location_on_outlined,
                      "Head Office",
                      "Dharmapuri, Tamil Nadu, India",
                    ),

                    const Divider(height: 35),

                    _infoRow(
                      Icons.calendar_today_outlined,
                      "Established",
                      "2026",
                    ),

                    const Divider(height: 35),

                    _infoRow(
                      Icons.verified_outlined,
                      "Registration Status",
                      "Registration Under Process",
                    ),

                    const Divider(height: 35),

                    _infoRow(
                      Icons.gavel_outlined,
                      "Governing Documents",
                      "Memorandum of Association (MOA) & Rules and Bye-Laws",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoRow(IconData icon, String title, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: AppColors.primary, size: 30),

        const SizedBox(width: 20),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 6),

              Text(
                value,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
