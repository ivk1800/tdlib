part of '../tdapi.dart';

/// Informs TDLib on a file generation progress
class SetFileGenerationProgress extends TdFunction {
  SetFileGenerationProgress(
      {required this.generationId,
      required this.expectedSize,
      required this.localPrefixSize});

  /// [generationId] The identifier of the generation process
  final int generationId;

  /// [expectedSize] Expected size of the generated file, in bytes; 0 if unknown
  final int expectedSize;

  /// [localPrefixSize] The number of bytes already generated
  final int localPrefixSize;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setFileGenerationProgress';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'generation_id': this.generationId,
        'expected_size': this.expectedSize,
        'local_prefix_size': this.localPrefixSize,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
