import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class FAQContact extends StatelessWidget {
  const FAQContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xffF8FAFC),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Frequently Asked Questions",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 18),

          SizedBox(
            width: 850,
            child: Text(
              "Find answers to some of the most common questions about Pharm.D Vault Organization, our publications, memberships, and collaborations.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),

          const SizedBox(height: 50),

          const SizedBox(
            width: 950,
            child: Column(
              children: [
                _FAQTile(
                  question: "How can I submit a research article?",
                  answer:
                      "You can submit your manuscript through the Publications section of our website. Please ensure your manuscript follows the author guidelines before submission.",
                ),

                _FAQTile(
                  question:
                      "Who can become a member of Pharm.D Vault Organization?",
                  answer:
                      "Pharm.D students, pharmacists, researchers, faculty members, healthcare professionals, and institutions are welcome to join according to the organization's membership policies.",
                ),

                _FAQTile(
                  question: "How long does it take to receive a response?",
                  answer:
                      "We generally respond to emails and contact form submissions within one to two business days.",
                ),

                _FAQTile(
                  question: "Do you provide publication certificates?",
                  answer:
                      "Yes. Publication certificates are issued according to the organization's publication policies after successful completion of the review and publication process.",
                ),

                _FAQTile(
                  question:
                      "Can institutions collaborate with Pharm.D Vault Organization?",
                  answer:
                      "Yes. We welcome academic institutions, hospitals, researchers, and healthcare organizations for educational and research collaborations.",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _FAQTile extends StatelessWidget {
  final String question;
  final String answer;

  const _FAQTile({required this.question, required this.answer});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ExpansionTile(
        tilePadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        childrenPadding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
        iconColor: AppColors.primary,
        collapsedIconColor: AppColors.primary,
        title: Text(
          question,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        children: [
          Text(
            answer,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.7),
          ),
        ],
      ),
    );
  }
}
