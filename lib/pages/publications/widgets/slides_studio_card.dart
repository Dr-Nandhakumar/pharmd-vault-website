import 'package:flutter/material.dart';
import '../../../core/utils/app_actions.dart';

class SlidesStudioCard extends StatelessWidget {
  const SlidesStudioCard({super.key});

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
    child: Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1120),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Vault Slides — Beta',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Create research and teaching presentations with slide layouts, charts, speaker notes and editable PPTX export. Free, local-first editing — no account required.',
                ),
                const SizedBox(height: 12),
                const Text(
                  'Beta limitations: no PPTX import or cloud collaboration. Animations play in the browser only. Save project backups and review exported layouts. Best used on a desktop.',
                ),
                const SizedBox(height: 20),
                FilledButton.icon(
                  onPressed: () => AppActions.openUrl(
                    context,
                    Uri.base.resolve('/slides/').toString(),
                  ),
                  icon: const Icon(Icons.slideshow),
                  label: const Text('Open Vault Slides'),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
