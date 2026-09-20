import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_urls.dart';

class ContactInformation extends StatelessWidget {
  const ContactInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Contact Information",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 18),

          SizedBox(
            width: 850,
            child: Text(
              "Our team is available to assist you with publications, memberships, collaborations, educational support, research guidance, and general inquiries.",
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
              _ContactCard(
                icon: Icons.location_on_outlined,
                title: "Registered Office",
                value:
                    "Pharm.D Vault Organization\nDharmapuri District\nTamil Nadu, India",
              ),

              _ContactCard(
                icon: Icons.email_outlined,
                title: "Email",
                value: AppUrls.email,
              ),

              _ContactCard(
                icon: Icons.call_outlined,
                title: "Phone",
                value: "${AppUrls.phone}\n(Monday - Saturday)",
              ),

              _ContactCard(
                icon: Icons.chat_outlined,
                title: "WhatsApp",
                value: AppUrls.whatsapp,
              ),

              _ContactCard(
                icon: Icons.language_outlined,
                title: "Website",
                value: "www.pharmdvault.org",
              ),

              _ContactCard(
                icon: Icons.groups_outlined,
                title: "Collaboration",
                value:
                    "Research Partnerships\nAcademic Collaboration\nInstitutional MoU",
              ),

              _ContactCard(
                icon: Icons.article_outlined,
                title: "Publications",
                value: "Research Articles\nCase Reports\nReview Articles",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ContactCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const _ContactCard({
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            children: [
              CircleAvatar(
                radius: 32,
                backgroundColor: AppColors.primary.withValues(alpha: 0.12),
                child: Icon(icon, size: 32, color: AppColors.primary),
              ),

              const SizedBox(height: 20),

              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 16),

              Text(
                value,
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(height: 1.7),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
