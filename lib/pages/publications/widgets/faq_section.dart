import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class FAQSection extends StatelessWidget {
  const FAQSection({super.key});

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

          const SizedBox(height: 16),

          Text(
            "Find answers to the most common questions regarding article submission and publication.",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),

          const SizedBox(height: 50),

          const SizedBox(
            width: 900,
            child: Column(
              children: [
                _FAQTile(
                  question: "Who can submit an article?",
                  answer:
                      "Pharmacy students, researchers, academicians, healthcare professionals, and clinicians are welcome to submit manuscripts.",
                ),

                _FAQTile(
                  question: "Is there a publication fee?",
                  answer:
                      "Publication policies and applicable processing charges (if any) will be communicated during the submission process.",
                ),

                _FAQTile(
                  question: "How long does the review process take?",
                  answer:
                      "The average editorial and peer-review process generally takes 2–4 weeks, depending on reviewer availability and manuscript quality.",
                ),

                _FAQTile(
                  question: "Can I submit a previously published article?",
                  answer:
                      "No. Only original and unpublished work is accepted for consideration.",
                ),

                _FAQTile(
                  question: "Will I receive a certificate?",
                  answer:
                      "Yes. Eligible authors, reviewers, and editorial contributors receive digital certificates issued by Pharm.D Vault Organization.",
                ),

                _FAQTile(
                  question: "How can I contact the Editorial Office?",
                  answer:
                      "You can contact us through the Contact page or the email address provided on the website.",
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
      margin: const EdgeInsets.only(bottom: 18),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ExpansionTile(
        iconColor: AppColors.primary,
        collapsedIconColor: AppColors.primary,
        title: Text(
          question,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        childrenPadding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
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
