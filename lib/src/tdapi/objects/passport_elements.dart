import '../tdapi.dart';

/// Contains information about saved Telegram Passport elements
class PassportElements extends TdObject {
  PassportElements({required this.elements, this.extra});

  /// [elements] Telegram Passport elements
  final List<PassportElement> elements;

  /// callback sign
  final dynamic? extra;

  static const String CONSTRUCTOR = 'passportElements';

  static PassportElements? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PassportElements(
        elements: List<PassportElement>.from((json['elements}'] ?? [])
            .map((item) => PassportElement.fromJson(item))
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'elements': this.elements, '@type': CONSTRUCTOR, '@extra': this.extra};
}
