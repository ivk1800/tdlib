part of '../tdapi.dart';

/// Group.Objects
/// Represents a link to an opus-encoded audio file within an OGG container, single channel audio
class InputInlineQueryResultVoiceNote extends InputInlineQueryResult {
  InputInlineQueryResultVoiceNote(
      {required this.id,
      required this.title,
      required this.voiceNoteUrl,
      required this.voiceNoteDuration,
      ReplyMarkup? this.replyMarkup,
      required this.inputMessageContent});

  /// id Unique identifier of the query result
  final String id;

  /// title Title of the voice note
  final String title;

  /// voice_note_url The URL of the voice note file
  final String voiceNoteUrl;

  /// voice_note_duration Duration of the voice note, in seconds
  final int voiceNoteDuration;

  /// reply_markup The message reply markup. Must be of type replyMarkupInlineKeyboard or null
  final ReplyMarkup? replyMarkup;

  /// input_message_content The content of the message to be sent. Must be one of the following types: InputMessageText, InputMessageVoiceNote, InputMessageLocation, InputMessageVenue or InputMessageContact
  final InputMessageContent inputMessageContent;

  static const String CONSTRUCTOR = 'inputInlineQueryResultVoiceNote';

  static InputInlineQueryResultVoiceNote? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputInlineQueryResultVoiceNote(
        id: json['id'],
        title: json['title'],
        voiceNoteUrl: json['voice_note_url'],
        voiceNoteDuration: json['voice_note_duration'],
        replyMarkup: ReplyMarkup.fromJson(json['reply_markup']),
        inputMessageContent:
            InputMessageContent.fromJson(json['input_message_content'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'id': this.id,
        'title': this.title,
        'voice_note_url': this.voiceNoteUrl,
        'voice_note_duration': this.voiceNoteDuration,
        'reply_markup': this.replyMarkup,
        'input_message_content': this.inputMessageContent,
        '@type': CONSTRUCTOR
      };
}
