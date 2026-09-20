import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/app_urls.dart';

/// Centralises links and keeps failures understandable to visitors.
class AppActions {
  AppActions._();

  static Future<void> openUrl(BuildContext context, String url) async {
    if (url.trim().isEmpty) {
      _showMessage(context, 'This link will be available soon.');
      return;
    }

    final uri = Uri.tryParse(url);
    if (uri == null ||
        !await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      if (context.mounted) {
        _showMessage(
          context,
          'Unable to open this link. Please try again later.',
        );
      }
    }
  }

  static Future<void> composeEmail(
    BuildContext context, {
    required String subject,
    String body = '',
  }) async {
    // Build the mailto query explicitly. Uri(queryParameters: ...) uses `+`
    // for spaces, which some mobile email clients display literally instead
    // of decoding as a space.
    final query = <String>[
      'subject=${Uri.encodeComponent(subject)}',
      if (body.isNotEmpty) 'body=${Uri.encodeComponent(body)}',
    ].join('&');
    final uri = Uri.parse('mailto:${AppUrls.email}?$query');

    if (!await launchUrl(uri)) {
      if (context.mounted) {
        _showMessage(context, 'Please email us at ${AppUrls.email}.');
      }
    }
  }

  static Future<void> callPhone(BuildContext context) async {
    await openUrl(context, 'tel:+919361542119');
  }

  static Future<void> openWhatsApp(BuildContext context) async {
    await openUrl(context, AppUrls.whatsappUrl);
  }

  /// Opens a file bundled with the deployed Flutter website.
  static Future<void> openWebsiteAsset(
    BuildContext context,
    String assetPath,
  ) async {
    // Flutter copies an asset declared as "assets/..." to web output at
    // "assets/assets/...".
    final webAssetPath = assetPath.startsWith('assets/')
        ? 'assets/$assetPath'
        : assetPath;
    await openUrl(context, Uri.base.resolve(webAssetPath).toString());
  }

  static void _showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }
}
