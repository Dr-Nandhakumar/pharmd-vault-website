import '../models/publication_guideline.dart';

class GuidelineData {
  GuidelineData._();

  static final List<PublicationGuideline> guidelines = [
    PublicationGuideline(
      id: 'GL001',
      title: 'Original Work',
      description:
          'Submitted manuscripts must be original and not published elsewhere.',
      order: 1,
    ),
    PublicationGuideline(
      id: 'GL002',
      title: 'Plagiarism',
      description:
          'Articles must pass plagiarism screening before peer review.',
      order: 2,
    ),
    PublicationGuideline(
      id: 'GL003',
      title: 'References',
      description:
          'Use the required citation style specified by the organization.',
      order: 3,
    ),
    PublicationGuideline(
      id: 'GL004',
      title: 'Ethical Approval',
      description:
          'Research involving humans or animals must include ethical approval where applicable.',
      order: 4,
    ),
  ];
}
