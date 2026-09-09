import 'package:flutter/material.dart';

import '../../core/widgets/footer.dart';
import '../../core/widgets/navbar.dart';

import 'widgets/publications_hero.dart';
import 'widgets/featured_publications.dart';
import 'widgets/publication_categories.dart';
import 'widgets/latest_articles.dart';
import 'widgets/submission_process.dart';
import 'widgets/publication_guidelines_card.dart';
import 'widgets/indexing_section.dart';
import 'widgets/certificates_section.dart';
import 'widgets/faq_section.dart';
import 'widgets/submit_article_cta.dart';

class PublicationsPage extends StatelessWidget {
  const PublicationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Navbar(currentIndex: 2),

      endDrawer: Navbar.buildMobileDrawer(context, currentIndex: 2),

      body: const SingleChildScrollView(
        child: Column(
          children: [
            // Hero
            PublicationsHero(),

            // Featured Publications
            FeaturedPublications(),

            // Categories
            PublicationCategories(),

            // Latest Articles
            LatestArticles(),

            // Submission Process
            SubmissionProcess(),

            // Publication Guidelines
            PublicationGuidelinesCard(),

            // Indexing
            IndexingSection(),

            // Certificates
            CertificatesSection(),

            // FAQ
            FAQSection(),

            // Submit CTA
            SubmitArticleCTA(),

            // Footer
            Footer(),
          ],
        ),
      ),
    );
  }
}
