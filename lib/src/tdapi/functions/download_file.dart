import '../tdapi.dart';

/// Downloads a file from the cloud. Download progress and completion of the
/// will be notified through updateFile updates
/// Returns [File]
class DownloadFile extends TdFunction {
  DownloadFile(
      {required this.fileId,
      required this.priority,
      required this.offset,
      required this.limit,
      required this.synchronous});

  /// [fileId] Identifier of the file to download
  final int fileId;

  /// [priority] Priority of the download (1-32). The higher the priority, the
  /// the file will be downloaded. If the priorities of two files are equal,
  /// the last one for which downloadFile was called will be downloaded first
  final int priority;

  /// [offset] The starting position from which the file should be downloaded
  final int offset;

  /// [limit] Number of bytes which should be downloaded starting from the
  /// position before the download will be automatically cancelled; use 0 to
  /// without a limit
  final int limit;

  /// [synchronous] If false, this request returns file state just after the
  /// has been started. If true, this request returns file state only after. the
  /// has succeeded, has failed, has been cancelled or a new downloadFile
  /// with different offset/limit parameters was sent
  final bool synchronous;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'downloadFile';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'file_id': this.fileId,
        'priority': this.priority,
        'offset': this.offset,
        'limit': this.limit,
        'synchronous': this.synchronous,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
