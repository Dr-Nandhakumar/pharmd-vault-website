import 'package:flutter/material.dart';

import '../../core/widgets/footer.dart';
import '../../core/widgets/navbar.dart';

import 'widgets/news_hero.dart';
import 'widgets/featured_news.dart';
import 'widgets/latest_news.dart';
import 'widgets/upcoming_events.dart';
import 'widgets/announcements.dart';
import 'widgets/newsletter_section.dart';
import 'widgets/media_gallery.dart';
import 'widgets/press_releases.dart';
import 'widgets/news_subscription.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Navbar(currentIndex: 5),

      endDrawer: Navbar.buildMobileDrawer(context, currentIndex: 5),

      body: const SingleChildScrollView(
        child: Column(
          children: [
            NewsHero(),

            FeaturedNews(),

            LatestNews(),

            UpcomingEvents(),

            Announcements(),

            NewsletterSection(),

            MediaGallery(),

            PressReleases(),

            NewsSubscription(),

            Footer(),
          ],
        ),
      ),
    );
  }
}
