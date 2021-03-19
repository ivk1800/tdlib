part of '../tdapi.dart';

/// Group.Objects
/// Represents a JSON array
class JsonValueArray extends JsonValue {
  JsonValueArray({required this.values});

  /// values The list of array elements
  final List<JsonValue> values;

  static const String CONSTRUCTOR = 'jsonValueArray';

  static JsonValueArray? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return JsonValueArray(
        values: List<JsonValue>.from((json['values}'] ?? [])
            .map((item) => JsonValue.fromJson(json['JsonValue'])!)
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'values': this.values, '@type': CONSTRUCTOR};
}
