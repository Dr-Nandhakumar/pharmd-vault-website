import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class EditorialBoard extends StatelessWidget {
  const EditorialBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xffF8FAFC),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Editorial Board",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          SizedBox(
            width: 900,
            child: Text(
              "The Editorial Board maintains the scientific quality, editorial standards, peer-review integrity, and publication ethics of all Pharm.D Vault publications.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),

          const SizedBox(height: 50),

          Wrap(
            spacing: 28,
            runSpacing: 28,
            alignment: WrapAlignment.center,
            children: const [
              _EditorCard(
                designation: "Editor-in-Chief",
                name: "Dr. Abishanth S.G",
              ),

              _EditorCard(designation: "Managing Editor", name: "Vacant"),

              _EditorCard(designation: "Associate Editor", name: "Vacant"),

              _EditorCard(designation: "Section Editor", name: "Vacant"),

              _EditorCard(designation: "Technical Editor", name: "Vacant"),

              _EditorCard(designation: "Language Editor", name: "Vacant"),
            ],
          ),
        ],
      ),
    );
  }
}

class _EditorCard extends StatelessWidget {
  final String designation;
  final String name;

  const _EditorCard({required this.designation, required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              CircleAvatar(
                radius: 46,
                backgroundColor: AppColors.primary.withValues(alpha: 0.10),
                child: const Icon(
                  Icons.edit_document,
                  color: AppColors.primary,
                  size: 42,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                designation,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                name,
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
              ),

              const SizedBox(height: 14),

              Text(
                "Publication & Editorial Committee",
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: Colors.grey[700]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
