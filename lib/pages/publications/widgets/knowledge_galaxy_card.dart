import 'package:flutter/material.dart';
import '../../../core/utils/app_actions.dart';

class KnowledgeGalaxyCard extends StatelessWidget {
  const KnowledgeGalaxyCard({super.key});

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
                const Text('Knowledge Galaxy',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                const SizedBox(height: 12),
                const Text('Explore 22 autonomic receptor and signalling topics, compare connections, practise 19 recall questions and keep personal study notes. Free. No login required.'),
                const SizedBox(height: 12),
                const Text('Educational model of principal signalling relationships. Notes and bookmarks stay in this browser. Download notes to keep a backup.'),
                const SizedBox(height: 20),
                FilledButton.icon(
                  onPressed: () => AppActions.openUrl(context,
                      Uri.base.resolve('/knowledge-galaxy/').toString()),
                  icon: const Icon(Icons.animation),
                  label: const Text('Open Knowledge Galaxy'),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
