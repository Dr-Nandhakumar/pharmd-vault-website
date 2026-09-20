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
          child: Text(news.description, style: const TextStyle(height: 1.6)),
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

  const _NewsItem({
    required this.slug,
    required this.title,
    required this.category,
    required this.date,
    required this.description,
    required this.icon,
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
          child: Text(news.description, style: const TextStyle(height: 1.6)),
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
            Container(
              height: 170,
              color: const Color(0xffEAF2FF),
              child: Center(
                child: Icon(news.icon, size: 70, color: AppColors.primary),
              ),
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

