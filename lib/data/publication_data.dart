import '../models/publication.dart';

class PublicationData {
  PublicationData._();

  static final List<Publication> publications = [
    Publication(
      id: 'PUB001',
      title: 'Artificial Intelligence in Clinical Pharmacy Practice',
      category: 'Review Article',
      abstract:
          'A comprehensive review on the applications of artificial intelligence in clinical pharmacy, medication management, and patient care.',
      authors: ['Dr. K. Nandhakumar', 'Co-Author Name'],
      correspondingAuthor: 'Dr. K. Nandhakumar',
      journalName: 'Pharm.D Vault Journal',
      volume: '1',
      issue: '1',
      pages: '1-15',
      doi: 'Pending',
      publishedDate: DateTime(2026, 1, 15),
      pdfUrl: '',
      coverImage: '',
      keywords: ['Artificial Intelligence', 'Clinical Pharmacy', 'Healthcare'],
      featured: true,
    ),

    Publication(
      id: 'PUB002',
      title: 'Recent Advances in Pharmacovigilance',
      category: 'Original Research',
      abstract:
          'Recent developments in adverse drug reaction monitoring and pharmacovigilance systems.',
      authors: ['Author One', 'Author Two'],
      correspondingAuthor: 'Author One',
      journalName: 'Pharm.D Vault Journal',
      volume: '1',
      issue: '1',
      pages: '16-30',
      doi: 'Pending',
      publishedDate: DateTime(2026, 2, 10),
      pdfUrl: '',
      coverImage: '',
      keywords: ['Pharmacovigilance', 'ADR', 'Drug Safety'],
      featured: false,
    ),

    Publication(
      id: 'PUB003',
      title: 'Role of Clinical Pharmacists in ICU',
      category: 'Case Study',
      abstract:
          'Clinical pharmacist interventions in intensive care units improve patient safety and therapeutic outcomes.',
      authors: ['Research Team'],
      correspondingAuthor: 'Research Team',
      journalName: 'Pharm.D Vault Journal',
      volume: '1',
      issue: '2',
      pages: '31-45',
      doi: 'Pending',
      publishedDate: DateTime(2026, 3, 5),
      pdfUrl: '',
      coverImage: '',
      keywords: ['ICU', 'Clinical Pharmacy', 'Patient Safety'],
      featured: true,
    ),
  ];
}
