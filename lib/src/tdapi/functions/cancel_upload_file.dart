import '../tdapi.dart';

/// Stops the uploading of a file. Supported only for files uploaded by using
/// For other files the behavior is undefined
class CancelUploadFile extends TdFunction {
  CancelUploadFile({required this.fileId});

  /// [fileId] Identifier of the file to stop uploading
  final int fileId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'cancelUploadFile';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'file_id': this.fileId, '@type': CONSTRUCTOR, '@extra': this.extra};
}
