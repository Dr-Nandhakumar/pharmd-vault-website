import 'package:flutter/material.dart';
import '../../../core/utils/app_actions.dart';

class AnimationStudioCard extends StatelessWidget {
  const AnimationStudioCard({super.key});

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
                const Text('Animation Studio',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                const SizedBox(height: 12),
                const Text('Create schematic science animations with cells, molecules, particles and motion paths. Edit timing and captions, save projects on your device, and export PNG, silent WebM video or interactive HTML. Free. No login required.'),
                const SizedBox(height: 12),
                const Text('Early edition. Illustrations are not anatomically precise or to scale. Video export requires a compatible browser. Download a project backup to keep your work.'),
                const SizedBox(height: 20),
                FilledButton.icon(
                  onPressed: () => AppActions.openUrl(context,
                      Uri.base.resolve('/animation-studio/').toString()),
                  icon: const Icon(Icons.animation),
                  label: const Text('Open Animation Studio'),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
