import '../tdapi.dart';

/// A phone number
class TextEntityTypePhoneNumber extends TextEntityType {
  const TextEntityTypePhoneNumber();

  static const String CONSTRUCTOR = 'textEntityTypePhoneNumber';

  static TextEntityTypePhoneNumber? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TextEntityTypePhoneNumber();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
