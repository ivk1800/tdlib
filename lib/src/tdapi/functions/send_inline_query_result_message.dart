import '../tdapi.dart';

/// Sends the result of an inline query as a message. Returns the sent
/// Always clears a chat draft message
/// Returns [Message]
class SendInlineQueryResultMessage extends TdFunction {
  SendInlineQueryResultMessage(
      {required this.chatId,
      required this.messageThreadId,
      required this.replyToMessageId,
      required this.options,
      required this.queryId,
      required this.resultId,
      required this.hideViaBot});

  /// [chatId] Target chat
  final int chatId;

  /// [messageThreadId] If not 0, a message thread identifier in which the
  /// will be sent
  final int messageThreadId;

  /// [replyToMessageId] Identifier of a message to reply to or 0
  final int replyToMessageId;

  /// [options] Options to be used to send the message
  final MessageSendOptions options;

  /// [queryId] Identifier of the inline query
  final int queryId;

  /// [resultId] Identifier of the inline result
  final String resultId;

  /// [hideViaBot] If true, there will be no mention of a bot, via which the
  /// is sent. Can be used only for bots
  /// GetOption("photo_search_bot_username") and
  final bool hideViaBot;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'sendInlineQueryResultMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_thread_id': this.messageThreadId,
        'reply_to_message_id': this.replyToMessageId,
        'options': this.options.toJson(),
        'query_id': this.queryId,
        'result_id': this.resultId,
        'hide_via_bot': this.hideViaBot,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
