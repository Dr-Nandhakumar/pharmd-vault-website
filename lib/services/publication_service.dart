import '../data/publication_data.dart';
import '../models/publication.dart';

class PublicationService {
  PublicationService._();

  static List<Publication> getAllPublications() {
    return PublicationData.publications;
  }

  static List<Publication> getFeaturedPublications() {
    return PublicationData.publications
        .where((publication) => publication.featured)
        .toList();
  }

  static Publication? getPublicationById(String id) {
    try {
      return PublicationData.publications.firstWhere(
        (publication) => publication.id == id,
      );
    } catch (_) {
      return null;
    }
  }

  static List<Publication> search(String keyword) {
    final query = keyword.toLowerCase();

    return PublicationData.publications.where((publication) {
      return publication.title.toLowerCase().contains(query) ||
          publication.abstract.toLowerCase().contains(query) ||
          publication.authors.join(' ').toLowerCase().contains(query);
    }).toList();
  }
}
