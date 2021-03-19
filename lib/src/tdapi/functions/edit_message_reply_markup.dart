part of '../tdapi.dart';

/// Group.Functions
/// Edits the message reply markup; for bots only. Returns the edited message after the edit is completed on the server side
class EditMessageReplyMarkup extends TdFunction {
  EditMessageReplyMarkup(
      {required this.chatId,
      required this.messageId,
      required this.replyMarkup});

  /// chat_id The chat the message belongs to
  final int chatId;

  /// message_id Identifier of the message
  final int messageId;

  /// reply_markup The new message reply markup
  final ReplyMarkup replyMarkup;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'editMessageReplyMarkup';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'reply_markup': this.replyMarkup,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
