import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import '../../core/utils/app_actions.dart';
import '../../core/widgets/footer.dart';
import '../../core/widgets/navbar.dart';

class AiPharmacyCoursePage extends StatefulWidget {
  const AiPharmacyCoursePage({super.key});
  @override
  State<AiPharmacyCoursePage> createState() => _AiPharmacyCoursePageState();
}

class _AiPharmacyCoursePageState extends State<AiPharmacyCoursePage> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _phone = TextEditingController();
  final _profession = TextEditingController();
  final _institution = TextEditingController();

  @override
  void dispose() {
    for (final controller in [
      _name,
      _email,
      _phone,
      _profession,
      _institution,
    ]) {
      controller.dispose();
    }
    super.dispose();
  }

  Future<void> _register() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    final body =
        '''AI Application in Pharmacy — Course Registration

Name: ${_name.text.trim()}
Email: ${_email.text.trim()}
Phone: ${_phone.text.trim()}
Profession / Course: ${_profession.text.trim()}
Institution / Workplace: ${_institution.text.trim()}

I would like to register for the free AI Application in Pharmacy course. I understand that schedules and completion requirements will be communicated by Pharm.D Vault Organization.''';
    await AppActions.composeEmail(
      context,
      subject: 'Course Registration — AI Application in Pharmacy',
      body: body,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Navbar(currentIndex: 5),
      endDrawer: Navbar.buildMobileDrawer(context, currentIndex: 5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 72),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [AppColors.primary, Color(0xff0F4C81)],
                ),
              ),
              child: Column(
                children: [
                  const Icon(
                    Icons.psychology_outlined,
                    color: Colors.white,
                    size: 76,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'AI Application in Pharmacy',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Text(
                    'A free professional learning course for healthcare professionals',
                    textAlign: TextAlign.center,
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge?.copyWith(color: Colors.white70),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1050),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Course overview',
                      style: Theme.of(context).textTheme.headlineMedium
                          ?.copyWith(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'This course introduces practical, responsible and evidence-aware uses of artificial intelligence in pharmacy education, clinical pharmacy, medication safety, pharmacovigilance, research and professional communication.',
                      style: TextStyle(fontSize: 17, height: 1.7),
                    ),
                    const SizedBox(height: 32),
                    const Wrap(
                      spacing: 18,
                      runSpacing: 18,
                      children: [
                        _InfoCard(
                          icon: Icons.payments_outlined,
                          title: 'Course fee',
                          value: 'Free',
                        ),
                        _InfoCard(
                          icon: Icons.groups_outlined,
                          title: 'Eligibility',
                          value: 'Healthcare professionals and learners',
                        ),
                        _InfoCard(
                          icon: Icons.workspace_premium_outlined,
                          title: 'Recognition',
                          value: 'Subject to completion requirements',
                        ),
                      ],
                    ),
                    const SizedBox(height: 42),
                    Text(
                      'Learning areas',
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 16),
                    const Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: [
                        Chip(label: Text('AI foundations and limitations')),
                        Chip(label: Text('Clinical pharmacy applications')),
                        Chip(label: Text('Medication safety')),
                        Chip(label: Text('Pharmacovigilance')),
                        Chip(label: Text('Literature and research support')),
                        Chip(label: Text('Ethics, privacy and verification')),
                      ],
                    ),
                    const SizedBox(height: 48),
                    Text(
                      'Registration',
                      style: Theme.of(context).textTheme.headlineMedium
                          ?.copyWith(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Complete the form below. Your email application will open with the registration details ready to send.',
                    ),
                    const SizedBox(height: 24),
                    Card(
                      elevation: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(28),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              _field(_name, 'Full name', required: true),
                              _field(
                                _email,
                                'Email address',
                                required: true,
                                email: true,
                              ),
                              _field(_phone, 'Phone number', required: true),
                              _field(
                                _profession,
                                'Profession / current course',
                                required: true,
                              ),
                              _field(_institution, 'Institution / workplace'),
                              const SizedBox(height: 24),
                              FilledButton.icon(
                                onPressed: _register,
                                icon: const Icon(Icons.how_to_reg),
                                label: const Text('Prepare Registration Email'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Schedule, delivery method, assessment and recognition requirements will be communicated to registered participants. Registration does not claim accreditation by any external authority.',
                      style: TextStyle(color: Colors.black54, height: 1.5),
                    ),
                  ],
                ),
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }

  Widget _field(
    TextEditingController controller,
    String label, {
    bool required = false,
    bool email = false,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        controller: controller,
        keyboardType: email ? TextInputType.emailAddress : TextInputType.text,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
        validator: (value) {
          final text = value?.trim() ?? '';
          if (required && text.isEmpty) return 'Please enter $label.';
          if (email &&
              text.isNotEmpty &&
              !RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(text))
            return 'Please enter a valid email address.';
          return null;
        },
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  const _InfoCard({
    required this.icon,
    required this.title,
    required this.value,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 310,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.primary.withValues(alpha: .12),
                child: Icon(icon, color: AppColors.primary),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Text(value),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
