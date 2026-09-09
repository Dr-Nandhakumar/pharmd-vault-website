import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/utils/app_actions.dart';

class ContactHero extends StatelessWidget {
  const ContactHero({super.key});

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
            "Contact Us",
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
              "We are always happy to hear from students, educators, researchers, healthcare professionals, institutions, and collaborators. Reach out to Pharm.D Vault Organization for academic support, research collaboration, publications, memberships, partnerships, or general inquiries.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Colors.white70,
                height: 1.6,
              ),
            ),
          ),

          const SizedBox(height: 45),

          Wrap(
            alignment: WrapAlignment.center,
            spacing: 18,
            runSpacing: 18,
            children: [
              FilledButton.icon(
                onPressed: () => AppActions.composeEmail(
                  context,
                  subject: 'General enquiry',
                ),
                icon: const Icon(Icons.email_outlined),
                label: const Text("Email Us"),
              ),
              OutlinedButton.icon(
                onPressed: () => AppActions.callPhone(context),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: const BorderSide(color: Colors.white),
                ),
                icon: const Icon(Icons.call_outlined),
                label: const Text("Call Now"),
              ),
              OutlinedButton.icon(
                onPressed: () => AppActions.openWhatsApp(context),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: const BorderSide(color: Colors.white),
                ),
                icon: const Icon(Icons.chat_outlined),
                label: const Text("WhatsApp"),
              ),
            ],
          ),

          const SizedBox(height: 60),

          Wrap(
            alignment: WrapAlignment.center,
            spacing: 20,
            runSpacing: 20,
            children: const [
              _HeroCard(
                icon: Icons.mail_outline,
                title: "Official Email",
                value: "pharmdvault2025@gmail.com",
              ),
              _HeroCard(
                icon: Icons.chat_outlined,
                title: "WhatsApp",
                value: "+91 9500465017",
              ),
              _HeroCard(
                icon: Icons.language,
                title: "Website",
                value: "www.pharmdvault.org",
              ),
              _HeroCard(
                icon: Icons.location_on_outlined,
                title: "Location",
                value: "Tamil Nadu, India",
              ),
              _HeroCard(
                icon: Icons.support_agent,
                title: "Support",
                value: "Mon - Sat",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _HeroCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const _HeroCard({
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.white24),
      ),
      child: Column(
        children: [
          Icon(icon, color: Colors.white, size: 34),

          const SizedBox(height: 14),

          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            value,
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
