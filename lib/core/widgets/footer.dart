import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_strings.dart';
import '../constants/app_urls.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.footerBackground,
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
      child: Column(
        children: [
          Text(
            AppStrings.appName,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          Text(
            "Supporting Pharmacy Research & Publications",
            textAlign: TextAlign.center,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: Colors.white70),
          ),

          const SizedBox(height: 24),

          Wrap(
            alignment: WrapAlignment.center,
            spacing: 24,
            runSpacing: 12,
            children: [
              _footerLink(context, "Home", '/'),
              _footerLink(context, "About", '/about'),
              _footerLink(context, "Publications", '/publications'),
              _footerLink(context, "Guidelines", '/guidelines'),
              _footerLink(context, "Team", '/team'),
              _footerLink(context, "Contact", '/contact'),
              _footerLink(context, "Privacy", '/privacy'),
            ],
          ),

          const SizedBox(height: 30),

          const Divider(color: Colors.white24),

          const SizedBox(height: 20),

          SelectableText(
            AppUrls.email,
            style: const TextStyle(color: Colors.white70),
          ),

          const SizedBox(height: 8),

          Text(AppUrls.phone, style: const TextStyle(color: Colors.white70)),

          const SizedBox(height: 8),

          Text(
            'WhatsApp: ${AppUrls.whatsapp}',
            style: const TextStyle(color: Colors.white70),
          ),

          const SizedBox(height: 24),

          Text(
            "© 2026 Pharm.D Vault Organization. All Rights Reserved.",
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white60, fontSize: 13),
          ),
        ],
      ),
    );
  }

  Widget _footerLink(BuildContext context, String title, String route) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, route),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
