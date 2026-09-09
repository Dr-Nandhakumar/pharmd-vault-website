import 'package:flutter/material.dart';

import '../../core/widgets/footer.dart';
import '../../core/widgets/navbar.dart';

import 'widgets/guidelines_hero.dart';
import 'widgets/author_guidelines.dart';
import 'widgets/manuscript_format.dart';
import 'widgets/publication_ethics.dart';
import 'widgets/plagiarism_policy.dart';
import 'widgets/ai_policy.dart';
import 'widgets/peer_review_process.dart';
import 'widgets/copyright_policy.dart';
import 'widgets/submission_checklist.dart';
import 'widgets/download_templates.dart';

class GuidelinesPage extends StatelessWidget {
  const GuidelinesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Navbar(currentIndex: 3),

      endDrawer: Navbar.buildMobileDrawer(context, currentIndex: 3),

      body: const SingleChildScrollView(
        child: Column(
          children: [
            GuidelinesHero(),

            AuthorGuidelines(),

            ManuscriptFormat(),

            PublicationEthics(),

            PlagiarismPolicy(),

            AIPolicy(),

            PeerReviewProcess(),

            CopyrightPolicy(),

            SubmissionChecklist(),

            DownloadTemplates(),

            Footer(),
          ],
        ),
      ),
    );
  }
}
