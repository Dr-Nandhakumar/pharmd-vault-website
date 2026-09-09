class GalleryImage {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final String category;
  final DateTime uploadedDate;
  final bool featured;

  const GalleryImage({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.category,
    required this.uploadedDate,
    this.featured = false,
  });

  factory GalleryImage.fromMap(Map<String, dynamic> map) {
    return GalleryImage(
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      category: map['category'] ?? '',
      uploadedDate: DateTime.parse(
        map['uploadedDate'] ?? DateTime.now().toIso8601String(),
      ),
      featured: map['featured'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'imageUrl': imageUrl,
      'category': category,
      'uploadedDate': uploadedDate.toIso8601String(),
      'featured': featured,
    };
  }
}
