import '../models/gallery_image.dart';

class GalleryData {
  GalleryData._();

  static final List<GalleryImage> images = [
    GalleryImage(
      id: 'IMG001',
      title: 'Organization Logo',
      description: 'Official Pharm.D Vault Organization Logo',
      imageUrl: '',
      category: 'Branding',
      uploadedDate: DateTime(2026, 1, 1),
      featured: true,
    ),

    GalleryImage(
      id: 'IMG002',
      title: 'Research Activity',
      description: 'Research publication activities',
      imageUrl: '',
      category: 'Research',
      uploadedDate: DateTime(2026, 2, 15),
      featured: false,
    ),
  ];
}
