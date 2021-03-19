part of '../tdapi.dart';

/// Group.Objects
/// A message with a live location was viewed. When the update is received, the application is supposed to update the live location
class UpdateMessageLiveLocationViewed extends Update {
  UpdateMessageLiveLocationViewed(
      {required this.chatId, required this.messageId});

  /// chat_id Identifier of the chat with the live location message
  final int chatId;

  /// message_id Identifier of the message with live location
  final int messageId;

  static const String CONSTRUCTOR = 'updateMessageLiveLocationViewed';

  static UpdateMessageLiveLocationViewed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateMessageLiveLocationViewed(
        chatId: json['chat_id'], messageId: json['message_id']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        '@type': CONSTRUCTOR
      };
}
