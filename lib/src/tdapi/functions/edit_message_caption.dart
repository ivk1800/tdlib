import '../tdapi.dart';

/// Edits the message content caption. Returns the edited message after the
/// is completed on the server side
/// Returns [Message]
class EditMessageCaption extends TdFunction {
  EditMessageCaption(
      {required this.chatId,
      required this.messageId,
      required this.replyMarkup,
      required this.caption});

  /// [chatId] The chat the message belongs to
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// [replyMarkup] The new message reply markup; for bots only
  final ReplyMarkup replyMarkup;

  /// [caption] New message content caption;
  /// characters
  final FormattedText caption;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'editMessageCaption';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'reply_markup': this.replyMarkup.toJson(),
        'caption': this.caption.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
