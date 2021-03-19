part of '../tdapi.dart';

/// Group.Objects
/// Telegram Passport data has been received; for bots only
class MessagePassportDataReceived extends MessageContent {
  MessagePassportDataReceived(
      {required this.elements, required this.credentials});

  /// elements List of received Telegram Passport elements
  final List<EncryptedPassportElement> elements;

  /// credentials Encrypted data credentials
  final EncryptedCredentials credentials;

  static const String CONSTRUCTOR = 'messagePassportDataReceived';

  static MessagePassportDataReceived? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePassportDataReceived(
        elements: List<EncryptedPassportElement>.from((json['elements}'] ?? [])
            .map((item) => EncryptedPassportElement.fromJson(
                json['EncryptedPassportElement'])!)
            .toList()),
        credentials: EncryptedCredentials.fromJson(json['credentials'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'elements': this.elements,
        'credentials': this.credentials,
        '@type': CONSTRUCTOR
      };
}
