import '../tdapi.dart';

/// Edits the text of an inline text or game message sent via a bot; for bots
/// Returns [Ok]
class EditInlineMessageText extends TdFunction {
  EditInlineMessageText(
      {required this.inlineMessageId,
      required this.replyMarkup,
      required this.inputMessageContent});

  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [replyMarkup] The new message reply markup
  final ReplyMarkup replyMarkup;

  /// [inputMessageContent] New text content of the message. Should be of type
  final InputMessageContent inputMessageContent;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'editInlineMessageText';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'inline_message_id': this.inlineMessageId,
        'reply_markup': this.replyMarkup.toJson(),
        'input_message_content': this.inputMessageContent.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
