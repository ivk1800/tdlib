import '../tdapi.dart';

/// A file defined by its unique ID
class InputFileId extends InputFile {
  InputFileId({required this.id});

  /// [id] Unique file identifier
  final int id;

  static const String CONSTRUCTOR = 'inputFileId';

  static InputFileId? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputFileId(id: json['id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'id': this.id, '@type': CONSTRUCTOR};
}
