import '../tdapi.dart';

/// Writes a part of a generated file. This method is intended to be used only
/// the application has no direct access to TDLib's file system, because it is
/// slower than a direct write to the destination file
/// Returns [Ok]
class WriteGeneratedFilePart extends TdFunction {
  WriteGeneratedFilePart(
      {required this.generationId, required this.offset, required this.data});

  /// [generationId] The identifier of the generation process
  final int generationId;

  /// [offset] The offset from which to write the data to the file
  final int offset;

  /// [data] The data to write
  final String data;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'writeGeneratedFilePart';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'generation_id': this.generationId,
        'offset': this.offset,
        'data': this.data,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
