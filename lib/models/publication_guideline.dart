class PublicationGuideline {
  final String id;
  final String title;
  final String description;
  final int order;
  final bool required;

  const PublicationGuideline({
    required this.id,
    required this.title,
    required this.description,
    required this.order,
    this.required = true,
  });

  factory PublicationGuideline.fromMap(Map<String, dynamic> map) {
    return PublicationGuideline(
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      order: map['order'] ?? 0,
      required: map['required'] ?? true,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'order': order,
      'required': required,
    };
  }
}
