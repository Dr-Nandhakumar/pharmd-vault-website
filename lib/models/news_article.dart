class NewsArticle {
  final String id;
  final String title;
  final String summary;
  final String content;
  final String category;
  final String author;
  final String featuredImage;
  final DateTime publishedDate;
  final String sourceUrl;
  final bool featured;

  const NewsArticle({
    required this.id,
    required this.title,
    required this.summary,
    required this.content,
    required this.category,
    required this.author,
    required this.featuredImage,
    required this.publishedDate,
    required this.sourceUrl,
    this.featured = false,
  });

  factory NewsArticle.fromMap(Map<String, dynamic> map) {
    return NewsArticle(
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      summary: map['summary'] ?? '',
      content: map['content'] ?? '',
      category: map['category'] ?? '',
      author: map['author'] ?? '',
      featuredImage: map['featuredImage'] ?? '',
      publishedDate: DateTime.parse(
        map['publishedDate'] ?? DateTime.now().toIso8601String(),
      ),
      sourceUrl: map['sourceUrl'] ?? '',
      featured: map['featured'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'summary': summary,
      'content': content,
      'category': category,
      'author': author,
      'featuredImage': featuredImage,
      'publishedDate': publishedDate.toIso8601String(),
      'sourceUrl': sourceUrl,
      'featured': featured,
    };
  }
}
