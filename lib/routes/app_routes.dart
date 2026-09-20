import 'package:flutter/material.dart';

import '../pages/about/about_page.dart';
import '../pages/courses/ai_pharmacy_course_page.dart';
import '../pages/contact/contact_page.dart';
import '../pages/gallery/gallery_page.dart';
import '../pages/guidelines/guidelines_page.dart';
import '../pages/home/home_page.dart';
import '../pages/news/news_page.dart';
import '../pages/privacy/privacy_page.dart';
import '../pages/publications/publications_page.dart';
import '../pages/team/team_page.dart';

class AppRoutes {
  AppRoutes._();

  // ===========================================================
  // Route Names
  // ===========================================================

  static const String home = '/';

  static const String about = '/about';

  static const String aiPharmacyCourse = '/ai-pharmacy-course';

  static const String publications = '/publications';

  static const String guidelines = '/guidelines';

  static const String team = '/team';

  static const String news = '/news';

  static const String gallery = '/gallery';

  static const String contact = '/contact';

  static const String privacy = '/privacy';

  // ===========================================================
  // Routes
  // ===========================================================

  static Map<String, WidgetBuilder> routes = {
    home: (context) => const HomePage(),

    about: (context) => const AboutPage(),

    aiPharmacyCourse: (context) => const AiPharmacyCoursePage(),

    publications: (context) => const PublicationsPage(),

    guidelines: (context) => const GuidelinesPage(),

    team: (context) => const TeamPage(),

    news: (context) => const NewsPage(),

    gallery: (context) => const GalleryPage(),

    contact: (context) => const ContactPage(),

    privacy: (context) => const PrivacyPage(),
  };
}

