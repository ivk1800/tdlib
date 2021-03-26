import '../tdapi.dart';

/// Sends a message. Returns the sent message
/// Returns [Message]
class SendMessage extends TdFunction {
  SendMessage(
      {required this.chatId,
      required this.messageThreadId,
      required this.replyToMessageId,
      required this.options,
      required this.replyMarkup,
      required this.inputMessageContent,
      this.extra});

  /// [chatId] Target chat
  final int chatId;

  /// [messageThreadId] If not 0, a message thread identifier in which the
  /// will be sent
  final int messageThreadId;

  /// [replyToMessageId] Identifier of the message to reply to or 0
  final int replyToMessageId;

  /// [options] Options to be used to send the message
  final MessageSendOptions options;

  /// [replyMarkup] Markup for replying to the message; for bots only
  final ReplyMarkup replyMarkup;

  /// [inputMessageContent] The content of the message to be sent
  final InputMessageContent inputMessageContent;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'sendMessage';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_thread_id': this.messageThreadId,
        'reply_to_message_id': this.replyToMessageId,
        'options': this.options.toJson(),
        'reply_markup': this.replyMarkup.toJson(),
        'input_message_content': this.inputMessageContent.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
