import 'package:flutter/material.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/utils/responsive.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.value(
          context,
          mobile: 24,
          tablet: 48,
          desktop: 80,
        ),
        vertical: Responsive.value(
          context,
          mobile: 50,
          tablet: 70,
          desktop: 100,
        ),
      ),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFF8F9FA), Color(0xFFFFFDF5)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: [
          Image.asset(
            AppAssets.logo,
            height: Responsive.value(
              context,
              mobile: 120,
              tablet: 170,
              desktop: 220,
            ),
          ),

          const SizedBox(height: 30),

          Text(
            "Pharm.D Vault Organization",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
              color: AppColors.secondary,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 850),
            child: Text(
              "Advancing Pharmacy Research Through High-Quality Scientific Publications, Academic Collaboration, and Ethical Research Practices.",
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(height: 1.7),
            ),
          ),

          const SizedBox(height: 40),

          Wrap(
            alignment: WrapAlignment.center,
            spacing: 20,
            runSpacing: 20,
            children: [
              CustomButton(
                text: "Publish Article",
                icon: Icons.upload_file,
                onPressed: () => Navigator.pushNamed(context, '/contact'),
              ),

              CustomButton(
                text: "Explore Publications",
                type: ButtonType.secondary,
                icon: Icons.menu_book_outlined,
                onPressed: () => Navigator.pushNamed(context, '/publications'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
