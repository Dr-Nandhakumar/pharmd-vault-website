import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/utils/app_actions.dart';

class DownloadTemplates extends StatelessWidget {
  const DownloadTemplates({super.key});

  @override
  Widget build(BuildContext context) {
    const templates = [
      _TemplateFile('Author Guidelines PDF', 'assets/documents/guidelines/PharmD_Vault_Author_Guidelines.pdf'),
      _TemplateFile('Author Guidelines Word', 'assets/documents/guidelines/PharmD_Vault_Author_Guidelines.docx'),
      _TemplateFile('Article Manuscript Template', 'assets/documents/templates/PharmD_Vault_Manuscript_Template.docx'),
      _TemplateFile('Case Report Template', 'assets/documents/templates/PharmD_Vault_Case_Report_Template.docx'),
      _TemplateFile('Copyright Transfer Form', 'assets/documents/templates/PharmD_Vault_Copyright_Transfer_Agreement.docx'),
      _TemplateFile('Conflict of Interest Form', 'assets/documents/templates/PharmD_Vault_Conflict_of_Interest_Declaration.docx'),
      _TemplateFile('Ethical Approval Declaration', 'assets/documents/templates/PharmD_Vault_Ethical_Approval_Declaration.docx'),
      _TemplateFile('Cover Letter Template', 'assets/documents/templates/PharmD_Vault_Cover_Letter_Template.docx'),
    ];

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
      child: Column(
        children: [
          Text(
            "Download Templates",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(height: 18),

          SizedBox(
            width: 850,
            child: Text(
              "Use the Pharm.D Vault Organization templates before submitting your manuscript. These templates ensure uniform formatting and faster editorial review.",
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(height: 1.6),
            ),
          ),

          const SizedBox(height: 60),

          Wrap(
            spacing: 24,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: templates
                .map((template) => _TemplateCard(file: template))
                .toList(),
          ),

          const SizedBox(height: 60),

          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Icon(
                    Icons.folder_zip_outlined,
                    size: 60,
                    color: AppColors.primary,
                  ),

                  const SizedBox(height: 20),

                  Text(
                    "Complete Submission Package",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 16),

                  Text(
                    "Download all templates, author forms, declarations, and submission documents together in one package.",
                    textAlign: TextAlign.center,
                    style: Theme.of(
                      context,
                    ).textTheme.bodyLarge?.copyWith(height: 1.6),
                  ),

                  const SizedBox(height: 28),

                  FilledButton.icon(
                    onPressed: () => AppActions.openWebsiteAsset(
                      context,
                      'assets/documents/templates/PharmD_Vault_Complete_Submission_Package.zip',
                    ),
                    icon: const Icon(Icons.download),
                    label: const Text("Download Complete Package"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TemplateCard extends StatelessWidget {
  final _TemplateFile file;

  const _TemplateCard({required this.file});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const Icon(
                Icons.description_outlined,
                color: AppColors.primary,
                size: 50,
              ),

              const SizedBox(height: 18),

              Text(
              file.title,
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 24),

              FilledButton.icon(
                onPressed: () => AppActions.openWebsiteAsset(
                  context,
                  file.assetPath,
                ),
                icon: const Icon(Icons.download),
                label: const Text("Download"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TemplateFile {
  final String title;
  final String assetPath;

  const _TemplateFile(this.title, this.assetPath);
}
