import 'package:flutter/material.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_colors.dart';

class TeamHero extends StatelessWidget {
  const TeamHero({super.key});

  @override
  Widget build(BuildContext context) {
    final bool mobile = MediaQuery.of(context).size.width < 800;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: mobile ? 24 : 80,
        vertical: mobile ? 70 : 110,
      ),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xffF8FBFF), Color(0xffEEF5FF)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1250),
          child: mobile
              ? Column(
                  children: [
                    Image.asset(AppAssets.logo, height: 140),
                    const SizedBox(height: 40),
                    _buildContent(context),
                  ],
                )
              : Row(
                  children: [
                    Expanded(child: _buildContent(context)),
                    const SizedBox(width: 60),
                    Expanded(
                      child: Center(
                        child: Image.asset(AppAssets.logo, height: 300),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
          decoration: BoxDecoration(
            color: AppColors.primary.withValues(alpha: 0.10),
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Text(
            "OUR LEADERSHIP",
            style: TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
        ),

        const SizedBox(height: 25),

        Text(
          "Meet the Team Behind\nPharm.D Vault",
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
            height: 1.15,
          ),
        ),

        const SizedBox(height: 28),

        Text(
          "Our organization is driven by passionate pharmacists, educators, researchers, editors, reviewers, and volunteers dedicated to advancing pharmacy education, research, innovation, and patient care through collaboration and scientific excellence.",
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(height: 1.8, color: Colors.black87),
        ),

        const SizedBox(height: 40),

        Wrap(
          spacing: 18,
          runSpacing: 18,
          children: [
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.groups),
              label: const Text("Leadership"),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.handshake_outlined),
              label: const Text("Join Our Team"),
            ),
          ],
        ),
      ],
    );
  }
}
