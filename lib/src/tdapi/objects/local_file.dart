import '../tdapi.dart';

/// Represents a local file
class LocalFile extends TdObject {
  LocalFile(
      {required this.path,
      required this.canBeDownloaded,
      required this.canBeDeleted,
      required this.isDownloadingActive,
      required this.isDownloadingCompleted,
      required this.downloadOffset,
      required this.downloadedPrefixSize,
      required this.downloadedSize});

  /// [path] Local path to the locally available file part; may be empty
  final String path;

  /// [canBeDownloaded] True, if it is possible to try to download or generate
  /// file
  final bool canBeDownloaded;

  /// [canBeDeleted] True, if the file can be deleted
  final bool canBeDeleted;

  /// [isDownloadingActive] True, if the file is currently being downloaded (or
  /// local copy is being generated by some other means)
  final bool isDownloadingActive;

  /// [isDownloadingCompleted] True, if the local copy is fully available
  final bool isDownloadingCompleted;

  /// [downloadOffset] Download will be started from this offset.
  /// is calculated from this offset
  final int downloadOffset;

  /// [downloadedPrefixSize] If is_downloading_completed is false, then only
  /// prefix of the file starting from download_offset is ready to be read.
  /// is the size of that prefix
  final int downloadedPrefixSize;

  /// [downloadedSize] Total downloaded file bytes. Should be used only for
  /// download progress. The actual file size may be bigger, and some parts of
  /// may contain garbage
  final int downloadedSize;

  static const String CONSTRUCTOR = 'localFile';

  static LocalFile? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LocalFile(
        path: json['path'],
        canBeDownloaded: json['can_be_downloaded'],
        canBeDeleted: json['can_be_deleted'],
        isDownloadingActive: json['is_downloading_active'],
        isDownloadingCompleted: json['is_downloading_completed'],
        downloadOffset: json['download_offset'],
        downloadedPrefixSize: json['downloaded_prefix_size'],
        downloadedSize: json['downloaded_size']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'path': this.path,
        'can_be_downloaded': this.canBeDownloaded,
        'can_be_deleted': this.canBeDeleted,
        'is_downloading_active': this.isDownloadingActive,
        'is_downloading_completed': this.isDownloadingCompleted,
        'download_offset': this.downloadOffset,
        'downloaded_prefix_size': this.downloadedPrefixSize,
        'downloaded_size': this.downloadedSize,
        '@type': CONSTRUCTOR
      };
}
