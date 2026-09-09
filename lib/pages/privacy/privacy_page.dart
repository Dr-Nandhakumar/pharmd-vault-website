import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_urls.dart';
import '../../core/widgets/footer.dart';
import '../../core/widgets/navbar.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Navbar(),
      endDrawer: Navbar.buildMobileDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: AppColors.sectionBackground,
              padding: const EdgeInsets.all(64),
              child: Text(
                'Privacy Policy',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 900),
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    _PolicySection(
                      'Information we collect',
                      'We collect only the information you choose to provide through contact, newsletter, or submission forms, such as your name, email address, message, and manuscript details.',
                    ),
                    _PolicySection(
                      'How we use information',
                      'We use submitted information to respond to enquiries, manage publication-related communication, and improve the services of Pharm.D Vault Organization. We do not sell personal information.',
                    ),
                    _PolicySection(
                      'Cookies and analytics',
                      'This website may use essential technical cookies and privacy-conscious analytics to understand site performance. You can control cookies through your browser settings.',
                    ),
                    _PolicySection(
                      'External links',
                      'Our website may link to external resources. Their privacy practices are governed by their own policies.',
                    ),
                    _PolicySection(
                      'Your choices',
                      'You may request access, correction, or deletion of information you have provided by contacting us at ${AppUrls.email}.',
                    ),
                    _PolicySection(
                      'Updates',
                      'We may update this policy as the website develops. The latest version will always be published on this page.',
                    ),
                  ],
                ),
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}

class _PolicySection extends StatelessWidget {
  final String title;
  final String body;
  const _PolicySection(this.title, this.body);

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: 28),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(
          body,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.6),
        ),
      ],
    ),
  );
}
