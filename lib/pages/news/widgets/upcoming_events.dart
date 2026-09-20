import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/utils/app_actions.dart';

class UpcomingEvents extends StatelessWidget {
  const UpcomingEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 900),
          child: Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(36),
              child: Column(
                children: [
                  const Icon(
                    Icons.event_note_outlined,
                    size: 60,
                    color: AppColors.primary,
                  ),
                  const SizedBox(height: 18),
                  Text(
                    'Events and Professional Programs',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 14),
                  const Text(
                    'No dated event is currently open for registration. Contact Pharm.D Vault Organization to enquire about future webinars, workshops and professional programs.',
                    textAlign: TextAlign.center,
                    style: TextStyle(height: 1.6),
                  ),
                  const SizedBox(height: 24),
                  FilledButton.icon(
                    onPressed: () => AppActions.composeEmail(
                      context,
                      subject: 'Event and Professional Program Enquiry',
                    ),
                    icon: const Icon(Icons.email_outlined),
                    label: const Text('Enquire About Future Events'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

