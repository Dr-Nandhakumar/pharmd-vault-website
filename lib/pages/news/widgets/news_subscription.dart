import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/utils/app_actions.dart';

class NewsSubscription extends StatefulWidget {
  const NewsSubscription({super.key});
  @override
  State<NewsSubscription> createState() => _NewsSubscriptionState();
}

class _NewsSubscriptionState extends State<NewsSubscription> {
  final _email = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _email.dispose();
    super.dispose();
  }

  Future<void> _subscribe() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    await AppActions.composeEmail(
      context,
      subject: 'Newsletter Subscription Request',
      body:
          'Please add \${_email.text.trim()} to the Pharm.D Vault Organization newsletter.',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.primary,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 90),
      child: Center(
        child: SizedBox(
          width: 900,
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const Icon(
                  Icons.mark_email_read_outlined,
                  color: Colors.white,
                  size: 70,
                ),
                const SizedBox(height: 25),
                Text(
                  'Stay Connected',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 18),
                Text(
                  'Subscribe for announcements, educational resources, course openings and publication updates from Pharm.D Vault Organization.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.white70,
                    height: 1.6,
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: 650,
                  child: TextFormField(
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      final email = value?.trim() ?? '';
                      if (!RegExp(
                        r'^[^@\s]+@[^@\s]+\.[^@\s]+$',
                      ).hasMatch(email))
                        return 'Enter a valid email address.';
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Enter your email address',
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: const Icon(Icons.email_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                FilledButton.icon(
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: AppColors.primary,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 28,
                      vertical: 18,
                    ),
                  ),
                  onPressed: _subscribe,
                  icon: const Icon(Icons.send),
                  label: const Text('Prepare Subscription Email'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

