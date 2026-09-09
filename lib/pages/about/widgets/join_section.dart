import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class JoinSection extends StatelessWidget {
  const JoinSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.primary,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 90),
      child: Column(
        children: [
          const Text(
            "Become Part of Pharm.D Vault",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          const SizedBox(
            width: 850,
            child: Text(
              "Join our mission to advance pharmacy education, research, innovation, and healthcare excellence. Together we can shape the future of clinical pharmacy.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 18,
                height: 1.8,
              ),
            ),
          ),

          const SizedBox(height: 40),

          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/contact'),

            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: AppColors.primary,
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 20),
            ),

            child: const Text(
              "Become a Member",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
