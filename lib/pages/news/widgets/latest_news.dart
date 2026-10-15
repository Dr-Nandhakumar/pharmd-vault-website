import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../core/constants/app_colors.dart';

class LatestNews extends StatefulWidget {
  const LatestNews({super.key});

  @override
  State<LatestNews> createState() => _LatestNewsState();
}

class _LatestNewsState extends State<LatestNews> {
  bool _sharedArticleOpened = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_sharedArticleOpened) return;
    _sharedArticleOpened = true;
    final currentUrl = Uri.base.toString();
    final match = RegExp(r'[?&]article=([^&#]+)').firstMatch(currentUrl);
    final slug = match == null ? null : Uri.decodeComponent(match.group(1)!);
    if (slug == null) return;
    final matching = _news.where((item) => item.slug == slug);
    if (matching.isEmpty) return;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _showSharedArticle(context, matching.first);
    });
  }

  void _showSharedArticle(BuildContext context, _NewsItem news) {
    showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(news.title),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (news.imagePath != null) ...[
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset(news.imagePath!, fit: BoxFit.cover),
                ),
                const SizedBox(height: 20),
              ],
              Text(news.description, style: const TextStyle(height: 1.6)),
            ],
          ),
        ),
        actions: [
          TextButton.icon(
            onPressed: () async {
              await Clipboard.setData(ClipboardData(text: news.link));
              if (dialogContext.mounted) {
                ScaffoldMessenger.of(dialogContext).showSnackBar(
                  const SnackBar(content: Text('News link copied.')),
                );
              }
            },
            icon: const Icon(Icons.link),
            label: const Text('Copy shareable link'),
          ),
          if (news.slug == 'free-ai-application-in-pharmacy-course')
            FilledButton.icon(
              onPressed: () {
                Navigator.pop(dialogContext);
                Navigator.pushNamed(context, '/ai-pharmacy-course');
              },
              icon: const Icon(Icons.how_to_reg),
              label: const Text('Course details & registration'),
            ),
          FilledButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  static const _news = [
    _NewsItem(
      slug: 'national-formulary-india-2026-update',
      title: 'PCI Highlights National Formulary of India 2026',
      category: 'Pharmacy Update',
      date: '14 October 2026',
      description:
          'The Pharmacy Council of India has published a circular concerning the 2026 edition of the National Formulary of India. Pharmacy educators, students and practitioners can check the latest edition and the council\'s notice when updating their reference resources.',
      icon: Icons.menu_book_outlined,
    ),
    _NewsItem(
      slug: 'mpharm-medical-device-syllabus-october-2026',
      title: 'M.Pharm Medical Device Syllabus Implementation Update',
      category: 'Pharmacy Education',
      date: '13 October 2026',
      description:
          'PCI has issued a circular on implementation of the M.Pharm Medical Device syllabus published in the Gazette of India. Institutions and prospective learners should review the notified curriculum and applicable institutional requirements. This update is not an admission announcement.',
      icon: Icons.school_outlined,
    ),
    _NewsItem(
      slug: 'free-human-anatomy-learning-course-launch',
      title: 'Free Anatomy, Physiology and Pathophysiology Course Now Open',
      category: 'Pharm.D Vault Announcement',
      date: '12 October 2026',
      description:
          'Pharm.D Vault has opened its visual learning course for BP104T, Semester I of the B.Pharm 2026 syllabus as per NEP 2020. Explore 102 topics, quizzes, shared 3D teaching models and selected physiology labs from the Publications page. Access is free, with no login or payment required. Models are simplified educational tools, not patient-specific clinical simulations.',
      icon: Icons.view_in_ar_outlined,
    ),
    _NewsItem(
      slug: '75th-indian-pharmaceutical-congress-2026',
      title: '75th Indian Pharmaceutical Congress Scheduled for December',
      category: 'Upcoming Pharmacy Event',
      date: '6 October 2026',
      description:
          'PCI has circulated a notice on faculty and student participation in the platinum jubilee edition of the Indian Pharmaceutical Congress. The event is scheduled for 18–20 December 2026 at Yashobhoomi, New Delhi. Check the organisers\' current registration and programme details before making arrangements. Pharm.D Vault is sharing this as an education-sector update, not as the event organiser.',
      icon: Icons.event_outlined,
    ),
    _NewsItem(
      slug: 'world-pharmacists-day-2026',
      title: 'World Pharmacists Day 2026',
      category: 'World Pharmacists Day',
      date: '25 September 2026',
      description:
          'Pharm.D Vault Organization extends warm wishes to pharmacists everywhere on World Pharmacists Day. Under the 2026 theme, “Empowering pharmacists for healthier futures,” we honour pharmacists who protect patients, advance the responsible use of medicines, strengthen healthcare systems, and build healthier communities.',
      icon: Icons.local_pharmacy_outlined,
      imagePath: 'assets/news/world_pharmacists_day_2026.png',
    ),
    _NewsItem(
      slug: 'pharmd-government-colleges',
      title: 'Pharm.D Education at Government Colleges',
      category: 'Pharmacy Education',
      date: '20 September 2026',
      description:
          'Pharm.D Vault highlights the importance of expanding accessible Doctor of Pharmacy education through government colleges, strengthening clinical pharmacy training and public healthcare.',
      icon: Icons.account_balance_outlined,
    ),
    _NewsItem(
      slug: 'free-ai-application-in-pharmacy-course',
      title: 'Free Course: AI Application in Pharmacy',
      category: 'Free Professional Course',
      date: '20 September 2026',
      description:
          'Pharm.D Vault Organization announces a free course for healthcare professionals on the practical and responsible application of artificial intelligence in pharmacy. Participants who meet the course requirements will receive recognition from Pharm.D Vault Organization.',
      icon: Icons.psychology_outlined,
    ),
    _NewsItem(
      slug: 'research-submission-portal',
      title: 'Research Article Submission Portal Open',
      category: 'Publication',
      date: '18 July 2026',
      description:
          'Authors can submit manuscripts through the Pharm.D Vault publication system.',
      icon: Icons.article_outlined,
    ),
    _NewsItem(
      slug: 'clinical-pharmacy-webinar',
      title: 'Clinical Pharmacy Webinar Announced',
      category: 'Event',
      date: '14 July 2026',
      description:
          'A national webinar on Clinical Pharmacy Practice will be conducted for Pharm.D students.',
      icon: Icons.co_present_outlined,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xffF8FAFC),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            'Latest News',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: 850,
            child: Text(
              'updates, education news, free learning opportunities, publications, events, and organizational announcements.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const SizedBox(height: 50),
          Wrap(
            spacing: 30,
            runSpacing: 30,
            alignment: WrapAlignment.center,
            children: _news.map((news) => _NewsCard(news: news)).toList(),
          ),
        ],
      ),
    );
  }
}

class _NewsItem {
  final String slug;
  final String title;
  final String category;
  final String date;
  final String description;
  final IconData icon;
  final String? imagePath;

  const _NewsItem({
    required this.slug,
    required this.title,
    required this.category,
    required this.date,
    required this.description,
    required this.icon,
    this.imagePath,
  });

  String get link => 'https://pharmdvault.org/?article=$slug#/news';
  String get shareText =>
      '$title\\n\\n$description\\n\\nRead on Pharm.D Vault: $link';
}

class _NewsCard extends StatelessWidget {
  final _NewsItem news;
  const _NewsCard({required this.news});

  Future<void> _copyLink(BuildContext context) async {
    await Clipboard.setData(ClipboardData(text: news.link));
    if (context.mounted) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('News link copied.')));
    }
  }

  void _showArticle(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(news.title),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (news.imagePath != null) ...[
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset(news.imagePath!, fit: BoxFit.cover),
                ),
                const SizedBox(height: 20),
              ],
              Text(news.description, style: const TextStyle(height: 1.6)),
            ],
          ),
        ),
        actions: [
          TextButton.icon(
            onPressed: () => _copyLink(dialogContext),
            icon: const Icon(Icons.link),
            label: const Text('Copy link'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 210,
              width: double.infinity,
              child: news.imagePath == null
                  ? ColoredBox(
                      color: const Color(0xffEAF2FF),
                      child: Center(
                        child: Icon(
                          news.icon,
                          size: 70,
                          color: AppColors.primary,
                        ),
                      ),
                    )
                  : Image.asset(news.imagePath!, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      news.category,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    news.title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_today,
                        size: 16,
                        color: AppColors.primary,
                      ),
                      const SizedBox(width: 8),
                      Text(news.date),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    news.description,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium?.copyWith(height: 1.6),
                  ),
                  const SizedBox(height: 20),
                  Wrap(
                    spacing: 6,
                    runSpacing: 6,
                    children: [
                      TextButton.icon(
                        onPressed:
                            news.slug ==
                                'free-ai-application-in-pharmacy-course'
                            ? () => Navigator.pushNamed(
                                context,
                                '/ai-pharmacy-course',
                              )
                            : () => _showArticle(context),
                        icon: const Icon(Icons.menu_book_outlined),
                        label: Text(
                          news.slug == 'free-ai-application-in-pharmacy-course'
                              ? 'Register'
                              : 'Read',
                        ),
                      ),
                      IconButton(
                        tooltip: 'Copy shareable news link',
                        onPressed: () => _copyLink(context),
                        icon: const Icon(Icons.link),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
