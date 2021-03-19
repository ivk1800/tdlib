part of '../tdapi.dart';

/// Group.Objects
/// Represents a JSON object
class JsonValueObject extends JsonValue {
  JsonValueObject({required this.members});

  /// members The list of object members
  final List<JsonObjectMember> members;

  static const String CONSTRUCTOR = 'jsonValueObject';

  static JsonValueObject? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return JsonValueObject(
        members: List<JsonObjectMember>.from((json['members}'] ?? [])
            .map((item) => JsonObjectMember.fromJson(json['JsonObjectMember'])!)
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'members': this.members, '@type': CONSTRUCTOR};
}
