import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class FounderSection extends StatelessWidget {
  const FounderSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool mobile = MediaQuery.of(context).size.width < 900;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 90),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: mobile
              ? Column(
                  children: [
                    _photoCard(),
                    const SizedBox(height: 40),
                    _content(context),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(flex: 4, child: _photoCard()),
                    const SizedBox(width: 60),
                    Expanded(flex: 6, child: _content(context)),
                  ],
                ),
        ),
      ),
    );
  }

  Widget _photoCard() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Container(
        height: 420,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: const Color(0xffF5F7FA),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Image.asset(
            'assets/logo/founder-nandhakumar.png',
            width: double.infinity,
            height: 420,
            fit: BoxFit.contain,
            semanticLabel: 'Dr. K. Nandhakumar, Founder and President',
          ),
        ),
      ),
    );
  }

  Widget _content(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
          decoration: BoxDecoration(
            color: AppColors.primary.withValues(alpha: 0.10),
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Text(
            "FOUNDER & PRESIDENT",
            style: TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
        ),

        const SizedBox(height: 24),

        Text(
          "Dr. K. Nandhakumar, Pharm.D",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: AppColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 10),

        Text(
          "Founder & President\nPharm.D Vault Organization",
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
        ),

        const SizedBox(height: 28),

        Text(
          "Pharm.D Vault Organization was founded with a vision to create a global platform dedicated to pharmacy education, scientific research, academic collaboration, innovation, and professional excellence. Our mission is to empower pharmacy students, researchers, academicians, and healthcare professionals by providing high-quality educational resources, ethical publication opportunities, and collaborative research initiatives.",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(height: 1.8),
        ),

        const SizedBox(height: 24),

        Text(
          "“Together, we can build a stronger future for pharmacy through knowledge, research, and innovation.”",
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontStyle: FontStyle.italic,
            color: AppColors.primary,
            height: 1.7,
          ),
        ),
      ],
    );
  }
}
