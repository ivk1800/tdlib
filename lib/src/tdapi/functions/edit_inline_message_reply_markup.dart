import '../tdapi.dart';

/// Edits the reply markup of an inline message sent via a bot; for bots only
class EditInlineMessageReplyMarkup extends TdFunction {
  EditInlineMessageReplyMarkup(
      {required this.inlineMessageId, required this.replyMarkup});

  /// [inlineMessageId] Inline message identifier
  final String inlineMessageId;

  /// [replyMarkup] The new message reply markup
  final ReplyMarkup replyMarkup;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'editInlineMessageReplyMarkup';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'inline_message_id': this.inlineMessageId,
        'reply_markup': this.replyMarkup,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
