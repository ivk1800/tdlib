part of '../tdapi.dart';

/// Group.Objects
/// A new incoming callback query from a message sent via a bot; for bots only
class UpdateNewInlineCallbackQuery extends Update {
  UpdateNewInlineCallbackQuery(
      {required this.id,
      required this.senderUserId,
      required this.inlineMessageId,
      required this.chatInstance,
      required this.payload});

  /// id Unique query identifier
  final int id;

  /// sender_user_id Identifier of the user who sent the query
  final int senderUserId;

  /// inline_message_id Identifier of the inline message, from which the query originated
  final String inlineMessageId;

  /// chat_instance An identifier uniquely corresponding to the chat a message was sent to
  final int chatInstance;

  /// payload Query payload
  final CallbackQueryPayload payload;

  static const String CONSTRUCTOR = 'updateNewInlineCallbackQuery';

  static UpdateNewInlineCallbackQuery? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateNewInlineCallbackQuery(
        id: int.tryParse(json['id']) ?? 0,
        senderUserId: json['sender_user_id'],
        inlineMessageId: json['inline_message_id'],
        chatInstance: int.tryParse(json['chat_instance']) ?? 0,
        payload: CallbackQueryPayload.fromJson(json['payload'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'sender_user_id': this.senderUserId,
        'inline_message_id': this.inlineMessageId,
        'chat_instance': this.chatInstance,
        'payload': this.payload,
        '@type': CONSTRUCTOR
      };
}
