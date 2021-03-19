part of '../tdapi.dart';

/// Group.Objects
/// Telegram Passport data has been sent
class MessagePassportDataSent extends MessageContent {
  MessagePassportDataSent({required this.types});

  /// types List of Telegram Passport element types sent
  final List<PassportElementType> types;

  static const String CONSTRUCTOR = 'messagePassportDataSent';

  static MessagePassportDataSent? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePassportDataSent(
        types: List<PassportElementType>.from((json['types}'] ?? [])
            .map((item) =>
                PassportElementType.fromJson(json['PassportElementType'])!)
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'types': this.types, '@type': CONSTRUCTOR};
}
