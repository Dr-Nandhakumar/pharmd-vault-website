import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class PeerReviewProcess extends StatelessWidget {
  const PeerReviewProcess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xffF8FAFC),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Peer Review Process",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 20),

          SizedBox(
            width: 900,
            child: Text(
              "Every manuscript submitted to Pharm.D Vault Organization undergoes a transparent, fair, and confidential review process to ensure scientific quality and ethical publication.",
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(height: 1.6),
            ),
          ),

          const SizedBox(height: 60),

          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: const [
              _StepCard(
                number: "01",
                title: "Submission",
                description:
                    "Authors submit their manuscript along with all required documents through the submission system.",
              ),

              _StepCard(
                number: "02",
                title: "Editorial Screening",
                description:
                    "Editors evaluate the manuscript for scope, originality, formatting, plagiarism, and ethical compliance.",
              ),

              _StepCard(
                number: "03",
                title: "Peer Review",
                description:
                    "Qualified reviewers independently assess scientific validity, methodology, clarity, and clinical relevance.",
              ),

              _StepCard(
                number: "04",
                title: "Author Revision",
                description:
                    "Authors revise the manuscript based on reviewer comments and provide detailed response documents.",
              ),

              _StepCard(
                number: "05",
                title: "Final Decision",
                description:
                    "The Editorial Board decides whether the manuscript is accepted, requires further revision, or is rejected.",
              ),

              _StepCard(
                number: "06",
                title: "Publication",
                description:
                    "Accepted manuscripts undergo final editing, proofreading, DOI assignment (future), and publication.",
              ),
            ],
          ),

          const SizedBox(height: 60),

          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                children: [
                  Icon(
                    Icons.verified_user_outlined,
                    color: AppColors.primary,
                    size: 56,
                  ),

                  const SizedBox(height: 20),

                  Text(
                    "Review Principles",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Column(
                    children: const [
                      ListTile(
                        leading: Icon(
                          Icons.check_circle_outline,
                          color: Colors.green,
                        ),
                        title: Text("Double-blind review whenever applicable"),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.check_circle_outline,
                          color: Colors.green,
                        ),
                        title: Text("Confidential reviewer identity"),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.check_circle_outline,
                          color: Colors.green,
                        ),
                        title: Text("Objective scientific evaluation"),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.check_circle_outline,
                          color: Colors.green,
                        ),
                        title: Text("Conflict of interest declaration"),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.check_circle_outline,
                          color: Colors.green,
                        ),
                        title: Text("Ethical publication standards"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _StepCard extends StatelessWidget {
  final String number;
  final String title;
  final String description;

  const _StepCard({
    required this.number,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: AppColors.primary.withValues(alpha: 0.12),
                child: Text(
                  number,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
              ),

              const SizedBox(height: 18),

              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 12),

              Text(
                description,
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(height: 1.6),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
