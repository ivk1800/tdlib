import '../tdapi.dart';

/// Contains information about a message draft
class DraftMessage extends TdObject {
  DraftMessage(
      {required this.replyToMessageId,
      required this.date,
      required this.inputMessageText});

  /// [replyToMessageId] Identifier of the message to reply to; 0 if none
  final int replyToMessageId;

  /// [date] Point in time (Unix timestamp) when the draft was created
  final int date;

  /// [inputMessageText] Content of the message draft; this should always be of
  /// inputMessageText
  final InputMessageContent inputMessageText;

  static const String CONSTRUCTOR = 'draftMessage';

  static DraftMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return DraftMessage(
        replyToMessageId: json['reply_to_message_id'],
        date: json['date'],
        inputMessageText:
            InputMessageContent.fromJson(json['input_message_text'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'reply_to_message_id': this.replyToMessageId,
        'date': this.date,
        'input_message_text': this.inputMessageText.toJson(),
        '@type': CONSTRUCTOR
      };
}
