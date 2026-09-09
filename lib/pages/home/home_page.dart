import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/widgets/footer.dart';
import '../../core/widgets/navbar.dart';
import 'widgets/about_section.dart';
import 'widgets/hero_section.dart';
import 'widgets/publication_section.dart';
import 'widgets/statistics_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: const Navbar(),

      endDrawer: Navbar.buildMobileDrawer(context),

      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeroSection(),

            AboutSection(),

            PublicationSection(),

            StatisticsSection(),

            Footer(),
          ],
        ),
      ),
    );
  }
}
