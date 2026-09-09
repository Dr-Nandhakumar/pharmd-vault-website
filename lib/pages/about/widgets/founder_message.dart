import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class FounderMessage extends StatelessWidget {
  const FounderMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      color: const Color(0xffF8FAFC),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1100),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundColor: AppColors.primary,
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 70,
                    ),
                  ),

                  const SizedBox(width: 40),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Message from the Founder & President",
                          style: Theme.of(context).textTheme.headlineSmall
                              ?.copyWith(
                                color: AppColors.primary,
                                fontWeight: FontWeight.bold,
                              ),
                        ),

                        const SizedBox(height: 25),

                        Text(
                          "Welcome to Pharm.D Vault Organization.\n\n"
                          "Our vision is to build a trusted platform that empowers pharmacy students, educators, researchers, and healthcare professionals through education, innovation, collaboration, and ethical scientific research.\n\n"
                          "Together, we can contribute to advancing pharmacy practice and improving patient care worldwide.",
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge?.copyWith(height: 1.8),
                        ),

                        const SizedBox(height: 30),

                        const Text(
                          "Dr. K. Nandhakumar",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 5),

                        Text(
                          "Founder & President\nPharm.D Vault Organization",
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
