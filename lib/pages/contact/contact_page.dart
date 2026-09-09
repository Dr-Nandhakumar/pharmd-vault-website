import 'package:flutter/material.dart';

import '../../core/widgets/footer.dart';
import '../../core/widgets/navbar.dart';

import 'widgets/contact_hero.dart';
import 'widgets/contact_information.dart';
import 'widgets/office_location.dart';
import 'widgets/contact_form.dart';
import 'widgets/office_hours.dart';
import 'widgets/social_media_section.dart';
import 'widgets/faq_contact.dart';
import 'widgets/privacy_policy_section.dart';
import 'widgets/legal_notice.dart';
import 'widgets/contact_cta.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Navbar(currentIndex: 7),

      endDrawer: Navbar.buildMobileDrawer(context, currentIndex: 7),

      body: const SingleChildScrollView(
        child: Column(
          children: [
            ContactHero(),

            ContactInformation(),

            OfficeLocation(),

            ContactForm(),

            OfficeHours(),

            SocialMediaSection(),

            FAQContact(),

            PrivacyPolicySection(),

            LegalNotice(),

            ContactCTA(),

            Footer(),
          ],
        ),
      ),
    );
  }
}
