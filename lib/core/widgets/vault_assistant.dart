import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VaultAssistant extends StatefulWidget {
  const VaultAssistant({super.key, required this.child});

  final Widget child;

  @override
  State<VaultAssistant> createState() => _VaultAssistantState();
}

class _VaultAssistantState extends State<VaultAssistant> {
  bool _open = false;
  String _answer =
      'Hello! I am Vault Buddy, your pharmacy learning guide. '
      'Choose a topic below and I will help you find it.';

  Future<void> _visit(String destination) async {
    try {
      final opened = await launchUrl(
        Uri.parse(destination),
        mode: LaunchMode.platformDefault,
        webOnlyWindowName: '_self',
      );
      if (!opened && mounted) {
        setState(
          () => _answer =
              'Unable to open the page. Please use the main navigation or email pharmdvault2025@gmail.com.',
        );
      }
    } catch (_) {
      if (mounted) {
        setState(
          () => _answer =
              'Unable to open the page. Please use the main navigation or email pharmdvault2025@gmail.com.',
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        widget.child,
        Positioned(
          right: 12,
          bottom: 12 + MediaQuery.paddingOf(context).bottom,
          child: Material(
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (_open)
                  Container(
                    width: screen.width < 400 ? screen.width - 24 : 360,
                    constraints: BoxConstraints(
                      maxHeight: screen.height * 0.68,
                    ),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(color: const Color(0xFFD4AF37)),
                      boxShadow: const [
                        BoxShadow(color: Colors.black26, blurRadius: 16),
                      ],
                    ),
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.smart_toy_rounded,
                                color: Color(0xFF123B19),
                              ),
                              const SizedBox(width: 10),
                              const Expanded(
                                child: Text(
                                  'Vault Buddy',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              IconButton(
                                tooltip: 'Close assistant',
                                onPressed: () => setState(() => _open = false),
                                icon: const Icon(Icons.close),
                              ),
                            ],
                          ),
                          const Text(
                            'Quick-help mascot · preset answers, not AI chat',
                            style: TextStyle(fontSize: 12),
                          ),
                          const SizedBox(height: 14),
                          Semantics(
                            liveRegion: true,
                            child: Text(
                              _answer,
                              style: const TextStyle(height: 1.5),
                            ),
                          ),
                          const SizedBox(height: 14),
                          Wrap(
                            spacing: 6,
                            runSpacing: 6,
                            children: [
                              _reply(
                                'Is anatomy free?',
                                'Yes! The 102-topic anatomy learning course is free, with no login or payment required. Use Open anatomy course below.',
                              ),
                              _reply(
                                'AI pharmacy course',
                                'Find the AI Application in Pharmacy syllabus and registration details on the course page. Course completion recognition is from Pharm.D Vault; this is not a claim of external accreditation.',
                              ),
                              _reply(
                                'Submit an article',
                                'Open Publications for submission guidance and templates. Use real research data and the required consent or ethics documentation. Demonstration manuscripts are not for journal submission.',
                              ),
                              _reply(
                                'Medical questions',
                                'I provide website help, not medical advice. Ask a qualified healthcare professional about medicines or symptoms. For an emergency, contact local emergency services.',
                              ),
                              _reply(
                                'Contact support',
                                'Email pharmdvault2025@gmail.com or call +91 9361542119. Do not send patient records, passwords or payment details.',
                              ),
                            ],
                          ),
                          const Divider(height: 26),
                          _link(
                            'Open anatomy course',
                            'https://pharmdvault.org/hap/',
                          ),
                          _link(
                            'AI course and registration',
                            'https://pharmdvault.org/#/ai-pharmacy-course',
                          ),
                          _link(
                            'Publications and templates',
                            'https://pharmdvault.org/#/publications',
                          ),
                          _link(
                            'Latest news',
                            'https://pharmdvault.org/#/news',
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'No chat is sent or stored by this helper. Educational guidance only.',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                Tooltip(
                  message: _open
                      ? 'Close Vault Buddy'
                      : 'Open Vault Buddy assistant',
                  child: FilledButton.icon(
                    style: FilledButton.styleFrom(
                      backgroundColor: const Color(0xFF123B19),
                      foregroundColor: const Color(0xFFFFDF78),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 16,
                      ),
                    ),
                    onPressed: () => setState(() => _open = !_open),
                    icon: const Icon(Icons.smart_toy_rounded, size: 30),
                    label: Text(_open ? 'Close' : 'Ask Buddy'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _reply(String label, String answer) => ActionChip(
    label: Text(label),
    onPressed: () => setState(() => _answer = answer),
  );

  Widget _link(String label, String destination) => TextButton.icon(
    onPressed: () => _visit(destination),
    icon: const Icon(Icons.arrow_forward, size: 18),
    label: Text(label),
  );
}
