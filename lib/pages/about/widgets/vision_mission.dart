import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class VisionMission extends StatelessWidget {
  const VisionMission({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      color: Colors.white,
      child: Column(
        children: [
          Text(
            "Vision & Mission",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 18),

          Text(
            "Guided by excellence, innovation, and ethical research.",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),

          const SizedBox(height: 60),

          Wrap(
            spacing: 30,
            runSpacing: 30,
            alignment: WrapAlignment.center,
            children: const [_VisionCard(), _MissionCard()],
          ),
        ],
      ),
    );
  }
}

class _VisionCard extends StatelessWidget {
  const _VisionCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 420,
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.primary.withValues(alpha: 0.15)),
      ),
      child: Column(
        children: [
          Icon(Icons.visibility_outlined, size: 60, color: AppColors.primary),

          const SizedBox(height: 20),

          Text(
            "Our Vision",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 20),

          Text(
            "To become a globally recognized organization advancing pharmacy education, scientific research, healthcare innovation, and evidence-based clinical practice through collaboration, integrity, and excellence.",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}

class _MissionCard extends StatelessWidget {
  const _MissionCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 420,
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Colors.amber.shade50,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.amber.shade300),
      ),
      child: Column(
        children: [
          Icon(Icons.flag_outlined, size: 60, color: Colors.amber.shade700),

          const SizedBox(height: 20),

          Text(
            "Our Mission",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.amber.shade700,
            ),
          ),

          const SizedBox(height: 20),

          Column(
            children: const [
              _MissionPoint("Promote high-quality pharmacy education."),
              _MissionPoint("Support ethical scientific research."),
              _MissionPoint("Encourage academic collaboration."),
              _MissionPoint("Develop innovative healthcare solutions."),
              _MissionPoint("Empower students and professionals worldwide."),
            ],
          ),
        ],
      ),
    );
  }
}

class _MissionPoint extends StatelessWidget {
  final String text;

  const _MissionPoint(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.check_circle, color: AppColors.primary, size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: Text(text, style: Theme.of(context).textTheme.bodyLarge),
          ),
        ],
      ),
    );
  }
}
