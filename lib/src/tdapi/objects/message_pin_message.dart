part of '../tdapi.dart';

/// Group.Objects
/// A message has been pinned
class MessagePinMessage extends MessageContent {
  MessagePinMessage({required this.messageId});

  /// message_id Identifier of the pinned message, can be an identifier of a deleted message or 0
  final int messageId;

  static const String CONSTRUCTOR = 'messagePinMessage';

  static MessagePinMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessagePinMessage(messageId: json['message_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'message_id': this.messageId, '@type': CONSTRUCTOR};
}
