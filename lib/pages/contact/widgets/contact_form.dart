import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/utils/app_actions.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _organizationController = TextEditingController();
  final _subjectController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _organizationController.dispose();
    _subjectController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Send Us a Message",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 18),

          SizedBox(
            width: 850,
            child: Text(
              "Have a question or would like to collaborate with us? Fill out the form below and our team will respond as soon as possible.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),

          const SizedBox(height: 50),

          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Padding(
              padding: const EdgeInsets.all(36),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    LayoutBuilder(
                      builder: (context, constraints) {
                        final wide = constraints.maxWidth >= 600;
                        return Wrap(
                          spacing: 20,
                          runSpacing: 20,
                          children: [
                            SizedBox(
                              width: wide
                                  ? (constraints.maxWidth - 20) / 2
                                  : constraints.maxWidth,
                              child: _InputField(
                                label: 'Full Name',
                                icon: Icons.person_outline,
                                controller: _nameController,
                                requiredField: true,
                              ),
                            ),
                            SizedBox(
                              width: wide
                                  ? (constraints.maxWidth - 20) / 2
                                  : constraints.maxWidth,
                              child: _InputField(
                                label: 'Email Address',
                                icon: Icons.email_outlined,
                                controller: _emailController,
                                requiredField: true,
                                email: true,
                              ),
                            ),
                            SizedBox(
                              width: wide
                                  ? (constraints.maxWidth - 20) / 2
                                  : constraints.maxWidth,
                              child: _InputField(
                                label: 'Phone Number',
                                icon: Icons.phone_outlined,
                                controller: _phoneController,
                              ),
                            ),
                            SizedBox(
                              width: wide
                                  ? (constraints.maxWidth - 20) / 2
                                  : constraints.maxWidth,
                              child: _InputField(
                                label: 'Organization / Institution',
                                icon: Icons.business_outlined,
                                controller: _organizationController,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    _InputField(
                      label: 'Subject',
                      icon: Icons.subject,
                      controller: _subjectController,
                      requiredField: true,
                    ),
                    const SizedBox(height: 20),
                    _InputField(
                      label: 'Your Message',
                      icon: Icons.message_outlined,
                      controller: _messageController,
                      maxLines: 6,
                      requiredField: true,
                    ),
                    const SizedBox(height: 35),
                    FilledButton.icon(
                      onPressed: _sendMessage,
                      style: FilledButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32,
                          vertical: 18,
                        ),
                      ),
                      icon: const Icon(Icons.send),
                      label: const Text('Send Message'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _sendMessage() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    final body =
        '''Name: ${_nameController.text}\nEmail: ${_emailController.text}\nPhone: ${_phoneController.text}\nOrganization: ${_organizationController.text}\n\n${_messageController.text}''';
    await AppActions.composeEmail(
      context,
      subject: _subjectController.text,
      body: body,
    );
  }
}

class _InputField extends StatelessWidget {
  final String label;
  final IconData icon;
  final int maxLines;
  final TextEditingController controller;
  final bool requiredField;
  final bool email;

  const _InputField({
    required this.label,
    required this.icon,
    required this.controller,
    this.maxLines = 1,
    this.requiredField = false,
    this.email = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      keyboardType: email ? TextInputType.emailAddress : TextInputType.text,
      validator: (value) {
        final text = value?.trim() ?? '';
        if (requiredField && text.isEmpty) return 'Please enter your $label.';
        if (email &&
            text.isNotEmpty &&
            !RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(text)) {
          return 'Please enter a valid email address.';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
      ),
    );
  }
}
