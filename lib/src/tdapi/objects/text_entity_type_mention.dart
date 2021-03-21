import '../tdapi.dart';

/// A mention of a user by their username
class TextEntityTypeMention extends TextEntityType {
  const TextEntityTypeMention();

  static const String CONSTRUCTOR = 'textEntityTypeMention';

  static TextEntityTypeMention? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypeMention();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
