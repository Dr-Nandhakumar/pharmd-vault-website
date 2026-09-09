class Publication {
  final String id;
  final String title;
  final String category;
  final String abstract;
  final List<String> authors;
  final String correspondingAuthor;
  final String journalName;
  final String volume;
  final String issue;
  final String pages;
  final String doi;
  final DateTime publishedDate;
  final String pdfUrl;
  final String coverImage;
  final List<String> keywords;
  final bool featured;

  const Publication({
    required this.id,
    required this.title,
    required this.category,
    required this.abstract,
    required this.authors,
    required this.correspondingAuthor,
    required this.journalName,
    required this.volume,
    required this.issue,
    required this.pages,
    required this.doi,
    required this.publishedDate,
    required this.pdfUrl,
    required this.coverImage,
    required this.keywords,
    this.featured = false,
  });

  factory Publication.fromMap(Map<String, dynamic> map) {
    return Publication(
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      category: map['category'] ?? '',
      abstract: map['abstract'] ?? '',
      authors: List<String>.from(map['authors'] ?? []),
      correspondingAuthor: map['correspondingAuthor'] ?? '',
      journalName: map['journalName'] ?? '',
      volume: map['volume'] ?? '',
      issue: map['issue'] ?? '',
      pages: map['pages'] ?? '',
      doi: map['doi'] ?? '',
      publishedDate: DateTime.parse(map['publishedDate']),
      pdfUrl: map['pdfUrl'] ?? '',
      coverImage: map['coverImage'] ?? '',
      keywords: List<String>.from(map['keywords'] ?? []),
      featured: map['featured'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'category': category,
      'abstract': abstract,
      'authors': authors,
      'correspondingAuthor': correspondingAuthor,
      'journalName': journalName,
      'volume': volume,
      'issue': issue,
      'pages': pages,
      'doi': doi,
      'publishedDate': publishedDate.toIso8601String(),
      'pdfUrl': pdfUrl,
      'coverImage': coverImage,
      'keywords': keywords,
      'featured': featured,
    };
  }
}
