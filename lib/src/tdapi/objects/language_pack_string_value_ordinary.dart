import '../tdapi.dart';

/// An ordinary language pack string
class LanguagePackStringValueOrdinary extends LanguagePackStringValue {
  LanguagePackStringValueOrdinary({required this.value});

  /// [value] String value
  final String value;

  static const String CONSTRUCTOR = 'languagePackStringValueOrdinary';

  static LanguagePackStringValueOrdinary? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LanguagePackStringValueOrdinary(value: json['value']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'value': this.value, '@type': CONSTRUCTOR};
}
