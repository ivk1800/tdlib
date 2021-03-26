import '../tdapi.dart';

/// Represents one language pack string
class LanguagePackString extends TdObject {
  LanguagePackString({required this.key, required this.value});

  /// [key] String key
  final String key;

  /// [value] String value
  final LanguagePackStringValue value;

  static const String CONSTRUCTOR = 'languagePackString';

  static LanguagePackString? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return LanguagePackString(
        key: json['key'],
        value: LanguagePackStringValue.fromJson(json['value'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'key': this.key, 'value': this.value.toJson(), '@type': CONSTRUCTOR};
}
