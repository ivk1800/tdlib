import '../tdapi.dart';

/// Edits the text of a message (or a text of a game message). Returns the
/// message after the edit is completed on the server side
/// Returns [Message]
class EditMessageText extends TdFunction {
  EditMessageText(
      {required this.chatId,
      required this.messageId,
      required this.replyMarkup,
      required this.inputMessageContent});

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [replyMarkup] The new message reply markup; for bots only
  final ReplyMarkup replyMarkup;

  /// [inputMessageContent] New text content of the message. Should be of type
  final InputMessageContent inputMessageContent;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'editMessageText';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'reply_markup': this.replyMarkup.toJson(),
        'input_message_content': this.inputMessageContent.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
