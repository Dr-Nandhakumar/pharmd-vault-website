import 'package:flutter/material.dart';

import '../../core/constants/app_assets.dart';
import '../../core/constants/app_colors.dart';
import '../../core/widgets/footer.dart';
import '../../core/widgets/navbar.dart';
import '../../data/gallery_data.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final images = GalleryData.images;
    return Scaffold(
      appBar: const Navbar(currentIndex: 6),
      endDrawer: Navbar.buildMobileDrawer(context, currentIndex: 6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: AppColors.sectionBackground,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 72),
              child: Column(
                children: [
                  Text(
                    'Gallery',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Highlights from Pharm.D Vault research, publications, and community activities.',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Wrap(
                spacing: 24,
                runSpacing: 24,
                alignment: WrapAlignment.center,
                children: images
                    .map(
                      (image) => SizedBox(
                        width: 360,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AspectRatio(
                                aspectRatio: 16 / 9,
                                child: image.imageUrl.isNotEmpty
                                    ? Image.network(
                                        image.imageUrl,
                                        fit: BoxFit.cover,
                                        errorBuilder:
                                            (context, error, stackTrace) =>
                                                _placeholder(),
                                      )
                                    : _placeholder(),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Chip(label: Text(image.category)),
                                    const SizedBox(height: 8),
                                    Text(
                                      image.title,
                                      style: Theme.of(
                                        context,
                                      ).textTheme.titleLarge,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(image.description),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }

  Widget _placeholder() => Container(
    color: AppColors.primary.withValues(alpha: 0.08),
    child: Center(child: Image.asset(AppAssets.logo, height: 110)),
  );
}
