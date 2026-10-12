import 'package:flutter/material.dart';

class HapCourseCard extends StatelessWidget {
  const HapCourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    final mobile = MediaQuery.sizeOf(context).width < 760;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: mobile ? 20 : 48, vertical: 32),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1120),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(mobile ? 24 : 40),
            decoration: BoxDecoration(
              color: const Color(0xFFF5F8F1),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: const Color(0xFFD4AF37)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Chip(
                  avatar: Icon(Icons.schedule, size: 18),
                  label: Text('Enrolment coming soon'),
                ),
                const SizedBox(height: 16),
                Text(
                  'Human Anatomy, Physiology and Pathophysiology',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: const Color(0xFF123B19),
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'B.Pharm 2026 syllabus (as per NEP 2020) · '
                  'Semester I · BP104T',
                  style: TextStyle(fontWeight: FontWeight.w700, height: 1.5),
                ),
                const SizedBox(height: 16),
                const Text(
                  'A visual learning course covering 102 first-semester topics '
                  'across five units, with labelled illustrations, shared '
                  'interactive 3D teaching models, selected physiology labs '
                  'and knowledge checks.',
                  style: TextStyle(fontSize: 16, height: 1.65),
                ),
                const SizedBox(height: 16),
                const Text(
                  'The learning portal is being prepared. Registration and '
                  'payments are not open yet.',
                  style: TextStyle(fontWeight: FontWeight.w600, height: 1.5),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Educational models simplify anatomy and physiology; related '
                  'topics share models. Not a complete disease simulation or '
                  'a tool for patient-specific clinical decisions. Independent '
                  'learning resource; no PCI endorsement is claimed.',
                  style: TextStyle(fontSize: 12, height: 1.5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
