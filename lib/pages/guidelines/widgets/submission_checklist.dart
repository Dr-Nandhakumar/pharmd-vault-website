import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class SubmissionChecklist extends StatelessWidget {
  const SubmissionChecklist({super.key});

  @override
  Widget build(BuildContext context) {
    final checklist = [
      "Manuscript prepared according to Pharm.D Vault Guidelines.",
      "Title page contains all author details.",
      "Abstract and keywords are included.",
      "References are properly formatted.",
      "Tables and figures are numbered correctly.",
      "Plagiarism level is within acceptable limits.",
      "Ethical approval is mentioned where applicable.",
      "Patient confidentiality has been maintained.",
      "Conflict of Interest declaration is provided.",
      "Copyright declaration is completed.",
      "All authors approved the final manuscript.",
      "Submission files are complete and readable.",
    ];

    return Container(
      width: double.infinity,
      color: const Color(0xffF8FAFC),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Submission Checklist",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 18),

          SizedBox(
            width: 850,
            child: Text(
              "Before submitting your manuscript, please ensure every item below has been completed.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),

          const SizedBox(height: 50),

          SizedBox(
            width: 900,
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: checklist
                      .map(
                        (item) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.check_circle,
                                color: Colors.green,
                              ),

                              const SizedBox(width: 14),

                              Expanded(
                                child: Text(
                                  item,
                                  style: Theme.of(
                                    context,
                                  ).textTheme.bodyLarge?.copyWith(height: 1.6),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
