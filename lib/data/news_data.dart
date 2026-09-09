import '../models/news_article.dart';

class NewsData {
  NewsData._();

  static final List<NewsArticle> news = [
    NewsArticle(
      id: 'NEWS001',
      title: 'Pharm.D Vault Organization Officially Launched',
      summary:
          'Pharm.D Vault Organization begins its journey to support pharmacy education and research publications.',
      content:
          'Pharm.D Vault Organization has officially started its publication activities to encourage pharmacy students and researchers.',
      category: 'Announcement',
      author: 'Administration',
      featuredImage: '',
      publishedDate: DateTime(2026, 1, 1),
      sourceUrl: '',
      featured: true,
    ),

    NewsArticle(
      id: 'NEWS002',
      title: 'Call for Research Articles',
      summary:
          'Authors are invited to submit original research, review articles and case reports.',
      content: 'Submissions are now open for upcoming publication issues.',
      category: 'Publication',
      author: 'Editorial Board',
      featuredImage: '',
      publishedDate: DateTime(2026, 2, 10),
      sourceUrl: '',
      featured: false,
    ),
  ];
}
