import 'package:flutter/material.dart';

import '../../core/widgets/navbar.dart';
import 'widgets/about_hero.dart';
import 'widgets/who_we_are.dart';
import 'widgets/vision_mission.dart';
import 'widgets/objectives_section.dart';
import 'widgets/core_values.dart';
import 'widgets/why_choose_us.dart';
import 'widgets/legal_status.dart';
import 'widgets/founder_message.dart';
import 'widgets/timeline_section.dart';
import 'widgets/join_section.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Navbar(currentIndex: 1),

      endDrawer: Navbar.buildMobileDrawer(context, currentIndex: 1),

      body: SingleChildScrollView(
        child: Column(
          children: const [
            AboutHero(),

            WhoWeAre(),

            VisionMission(),

            ObjectivesSection(),

            CoreValues(),

            WhyChooseUs(),

            LegalStatus(),

            FounderMessage(),

            TimelineSection(),

            JoinSection(),
          ],
        ),
      ),
    );
  }
}
