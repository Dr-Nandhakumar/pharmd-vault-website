import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/utils/app_actions.dart';

class ContactCTA extends StatelessWidget {
  const ContactCTA({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primary, Color(0xff0F4C81)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 90),
      child: Center(
        child: SizedBox(
          width: 950,
          child: Column(
            children: [
              const Icon(
                Icons.handshake_outlined,
                color: Colors.white,
                size: 70,
              ),

              const SizedBox(height: 25),

              Text(
                "Let's Build the Future of Pharmacy Together",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                "Whether you're a student, pharmacist, researcher, educator, healthcare professional, or institution, Pharm.D Vault Organization welcomes collaboration. Join us in advancing pharmacy education, scientific research, innovation, and patient care.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white70,
                  height: 1.7,
                ),
              ),

              const SizedBox(height: 45),

              Wrap(
                spacing: 18,
                runSpacing: 18,
                alignment: WrapAlignment.center,
                children: [
                  FilledButton.icon(
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: AppColors.primary,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 28,
                        vertical: 18,
                      ),
                    ),
                    onPressed: () => AppActions.composeEmail(
                      context,
                      subject: 'Membership enquiry',
                    ),
                    icon: const Icon(Icons.groups),
                    label: const Text("Become a Member"),
                  ),

                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      side: const BorderSide(color: Colors.white),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 28,
                        vertical: 18,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/publications');
                    },
                    icon: const Icon(Icons.article_outlined),
                    label: const Text("Submit Research"),
                  ),

                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      side: const BorderSide(color: Colors.white),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 28,
                        vertical: 18,
                      ),
                    ),
                    onPressed: () => AppActions.composeEmail(
                      context,
                      subject: 'Collaboration enquiry',
                    ),
                    icon: const Icon(Icons.handshake),
                    label: const Text("Collaborate"),
                  ),
                ],
              ),

              const SizedBox(height: 55),

              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.10),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Colors.white24),
                ),
                child: Column(
                  children: [
                    Text(
                      "Pharm.D Vault Organization",
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),

                    const SizedBox(height: 12),

                    Text(
                      "Empowering Pharmacy Education • Advancing Research • Inspiring Innovation",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.white70,
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
