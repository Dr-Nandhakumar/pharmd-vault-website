class GoogleDriveService {
  GoogleDriveService._();

  /// ===========================================================
  /// Google Drive Base Folder
  /// ===========================================================

  static const String baseFolder =
      'https://drive.google.com/drive/folders/YOUR_FOLDER_ID';

  /// Convert Google Drive file ID into a direct downloadable URL.
  static String directDownloadUrl(String fileId) {
    return 'https://drive.google.com/uc?export=download&id=$fileId';
  }

  /// Convert Google Drive file ID into a preview URL.
  static String previewUrl(String fileId) {
    return 'https://drive.google.com/file/d/$fileId/preview';
  }

  /// Convert Google Drive file ID into a view URL.
  static String viewUrl(String fileId) {
    return 'https://drive.google.com/file/d/$fileId/view';
  }
}
