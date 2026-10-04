import 'package:flutter/material.dart';

import '../../../core/utils/app_actions.dart';

class AnatomyAtlasCard extends StatelessWidget {
  const AnatomyAtlasCard({super.key});

  @override
  Widget build(BuildContext context) {
    final mobile = MediaQuery.sizeOf(context).width < 760;

    return Container(
      width: double.infinity,
      color: const Color(0xFFF5F8F1),
      padding: EdgeInsets.symmetric(
        horizontal: mobile ? 20 : 48,
        vertical: mobile ? 56 : 76,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1120),
          child: Container(
            padding: EdgeInsets.all(mobile ? 24 : 42),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFF123B19), Color(0xFF28652C)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(28),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x22000000),
                  blurRadius: 24,
                  offset: Offset(0, 12),
                ),
              ],
            ),
            child: mobile
                ? Column(
                    children: [
                      _visual(),
                      const SizedBox(height: 28),
                      _content(context),
                    ],
                  )
                : Row(
                    children: [
                      Expanded(flex: 4, child: _visual()),
                      const SizedBox(width: 46),
                      Expanded(flex: 6, child: _content(context)),
                    ],
                  ),
          ),
        ),
      ),
    );
  }

  Widget _visual() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: const Color(0x55D4AF37)),
      ),
      child: const Stack(
        alignment: Alignment.center,
        children: [
          Icon(
            Icons.accessibility_new_rounded,
            size: 150,
            color: Color(0xFFD4AF37),
          ),
          Positioned(
            right: 20,
            top: 18,
            child: Icon(
              Icons.view_in_ar_outlined,
              size: 44,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }

  Widget _content(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'PHARM.D VAULT LEARNING TOOLS',
          style: TextStyle(
            color: Color(0xFFD4AF37),
            fontWeight: FontWeight.w700,
            letterSpacing: 1.3,
          ),
        ),
        const SizedBox(height: 14),
        Text(
          'Interactive 3D Anatomy Atlas',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          'Rotate, search, isolate and explore thousands of anatomical pieces across major body systems. Built as a free educational reference for pharmacy and healthcare learners.',
          style: TextStyle(color: Colors.white70, height: 1.65, fontSize: 16),
        ),
        const SizedBox(height: 18),
        const Wrap(
          spacing: 18,
          runSpacing: 10,
          children: [
            _Feature(icon: Icons.layers_outlined, label: '15 body systems'),
            _Feature(icon: Icons.search_rounded, label: 'Structure search'),
            _Feature(
              icon: Icons.touch_app_outlined,
              label: 'Interactive controls',
            ),
          ],
        ),
        const SizedBox(height: 26),
        FilledButton.icon(
          onPressed: () => AppActions.openAnatomyAtlas(context),
          style: FilledButton.styleFrom(
            backgroundColor: const Color(0xFFD4AF37),
            foregroundColor: const Color(0xFF17321B),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
          ),
          icon: const Icon(Icons.view_in_ar_outlined),
          label: const Text('Explore the 3D Atlas'),
        ),
        const SizedBox(height: 14),
        const Text(
          'Educational reference only — not for diagnosis, surgery or patient-specific clinical decisions.',
          style: TextStyle(color: Colors.white60, fontSize: 12, height: 1.5),
        ),
      ],
    );
  }
}

class _Feature extends StatelessWidget {
  const _Feature({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: const Color(0xFFD4AF37), size: 19),
        const SizedBox(width: 7),
        Text(label, style: const TextStyle(color: Colors.white70)),
      ],
    );
  }
}
