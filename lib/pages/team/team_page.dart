import 'package:flutter/material.dart';

import '../../core/widgets/footer.dart';
import '../../core/widgets/navbar.dart';

import 'widgets/team_hero.dart';
import 'widgets/founder_section.dart';
import 'widgets/executive_board.dart';
import 'widgets/advisory_board.dart';
import 'widgets/editorial_board.dart';
import 'widgets/reviewers_section.dart';
import 'widgets/volunteers_section.dart';
import 'widgets/organizational_chart.dart';
import 'widgets/join_team.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Navbar(currentIndex: 4),

      endDrawer: Navbar.buildMobileDrawer(context, currentIndex: 4),

      body: const SingleChildScrollView(
        child: Column(
          children: [
            TeamHero(),

            FounderSection(),

            ExecutiveBoard(),

            AdvisoryBoard(),

            EditorialBoard(),

            ReviewersSection(),

            VolunteersSection(),

            OrganizationalChart(),

            JoinTeam(),

            Footer(),
          ],
        ),
      ),
    );
  }
}
