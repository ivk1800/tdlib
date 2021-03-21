import '../tdapi.dart';

/// Represents a string JSON value
class JsonValueString extends JsonValue {
  JsonValueString({required this.value});

  /// [value] The value
  final String value;

  static const String CONSTRUCTOR = 'jsonValueString';

  static JsonValueString? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return JsonValueString(value: json['value']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'value': this.value, '@type': CONSTRUCTOR};
}
