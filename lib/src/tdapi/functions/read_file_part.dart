import '../tdapi.dart';

/// Reads a part of a file from the TDLib file cache and returns read bytes.
/// method is intended to be used only if the application has no direct access
/// TDLib's file system, because it is usually slower than a direct read from
/// file
/// Returns [FilePart]
class ReadFilePart extends TdFunction {
  ReadFilePart(
      {required this.fileId, required this.offset, required this.count});

  /// [fileId] Identifier of the file. The file must be located in the TDLib
  /// cache
  final int fileId;

  /// [offset] The offset from which to read the file
  final int offset;

  /// [count] Number of bytes to read. An error will be returned if there are
  /// enough bytes available in the file from the specified position. Pass 0 to
  /// all available data from the specified position
  final int count;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'readFilePart';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'file_id': this.fileId,
        'offset': this.offset,
        'count': this.count,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
