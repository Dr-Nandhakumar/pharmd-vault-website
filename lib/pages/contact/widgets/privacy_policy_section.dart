import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class PrivacyPolicySection extends StatelessWidget {
  const PrivacyPolicySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Privacy Policy",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 20),

          SizedBox(
            width: 950,
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _PolicyItem(
                      title: "1. Information We Collect",
                      content:
                          "We may collect information such as your name, email address, phone number, institution, and any details you voluntarily provide through our contact forms, membership registration, publication submissions, or event registrations.",
                    ),

                    _PolicyItem(
                      title: "2. How We Use Your Information",
                      content:
                          "Your information is used solely to respond to inquiries, process article submissions, manage memberships, organize events, improve our educational services, and communicate important organizational updates.",
                    ),

                    _PolicyItem(
                      title: "3. Data Protection",
                      content:
                          "Pharm.D Vault Organization is committed to protecting your personal information. We implement appropriate administrative and technical safeguards to prevent unauthorized access, disclosure, or misuse of your data.",
                    ),

                    _PolicyItem(
                      title: "4. Third-Party Services",
                      content:
                          "Our website may use trusted third-party services such as Google Forms, Google Analytics, Firebase, YouTube, or Google Maps. These services have their own privacy policies governing the collection and processing of information.",
                    ),

                    _PolicyItem(
                      title: "5. Cookies",
                      content:
                          "Our website may use cookies and similar technologies to improve website performance, user experience, and analytics. Users may disable cookies through their browser settings if preferred.",
                    ),

                    _PolicyItem(
                      title: "6. Contact Regarding Privacy",
                      content:
                          "If you have questions regarding this Privacy Policy or your personal information, please contact Pharm.D Vault Organization through the contact details provided on this page.",
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
}

class _PolicyItem extends StatelessWidget {
  final String title;
  final String content;

  const _PolicyItem({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            content,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.7),
          ),
        ],
      ),
    );
  }
}
