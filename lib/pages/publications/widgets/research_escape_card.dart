import 'package:flutter/material.dart';
import '../../../core/utils/app_actions.dart';

class ResearchEscapeCard extends StatelessWidget {
  const ResearchEscapeCard({super.key});

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
                const Text('The Missing Research File',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                const SizedBox(height: 12),
                const Text('Enter the Research Escape Room: solve five evidence, statistics and ethics challenges to restore a locked archive. Free to play, with hints, an optional clock and a downloadable completion card. No login required.'),
                const SizedBox(height: 12),
                const Text('Fictional educational simulation only. Not clinical advice or an accredited assessment. Progress resets on reload.'),
                const SizedBox(height: 20),
                FilledButton.icon(
                  onPressed: () => AppActions.openUrl(context,
                      Uri.base.resolve('/research-escape/').toString()),
                  icon: const Icon(Icons.lock_open),
                  label: const Text('Enter the Research Escape Room'),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
