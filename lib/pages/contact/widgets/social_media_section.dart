import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_urls.dart';
import '../../../core/utils/app_actions.dart';

class SocialMediaSection extends StatelessWidget {
  const SocialMediaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Connect With Us",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 18),

          SizedBox(
            width: 850,
            child: Text(
              "Follow Pharm.D Vault Organization on our social media platforms to receive the latest news, publications, educational resources, webinars, and research updates.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),

          const SizedBox(height: 50),

          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: const [
              _SocialCard(
                icon: Icons.language,
                title: "Website",
                subtitle: "www.pharmdvault.org",
                url: AppUrls.website,
              ),

              _SocialCard(
                icon: Icons.facebook,
                title: "Facebook",
                subtitle: "Coming Soon",
              ),

              _SocialCard(
                icon: Icons.camera_alt_outlined,
                title: "Instagram",
                subtitle: "Coming Soon",
              ),

              _SocialCard(
                icon: Icons.play_circle_outline,
                title: "YouTube",
                subtitle: "@dr.k.nandhakumar",
                url: AppUrls.youtube,
              ),

              _SocialCard(
                icon: Icons.business_center_outlined,
                title: "LinkedIn",
                subtitle: "Coming Soon",
              ),

              _SocialCard(
                icon: Icons.alternate_email,
                title: "X (Twitter)",
                subtitle: "Coming Soon",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SocialCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String url;

  const _SocialCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.url = '',
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: url.isEmpty ? null : () => AppActions.openUrl(context, url),
        child: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: AppColors.primary.withValues(alpha: 0.10),
                  child: Icon(icon, size: 30, color: AppColors.primary),
                ),

                const SizedBox(height: 18),

                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  subtitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
