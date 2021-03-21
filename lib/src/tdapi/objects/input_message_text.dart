part of '../tdapi.dart';

/// A text message
class InputMessageText extends InputMessageContent {
  InputMessageText(
      {required this.text,
      required this.disableWebPagePreview,
      required this.clearDraft});

  /// [text] Formatted text to be sent; 1-GetOption("message_text_length_max")
  /// Only Bold, Italic, Underline, Strikethrough, Code, Pre, PreCode, TextUrl
  /// MentionName entities are allowed to be specified manually
  final FormattedText text;

  /// [disableWebPagePreview] True, if rich web page previews for URLs in the
  /// text should be disabled
  final bool disableWebPagePreview;

  /// [clearDraft] True, if a chat message draft should be deleted
  final bool clearDraft;

  static const String CONSTRUCTOR = 'inputMessageText';

  static InputMessageText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InputMessageText(
        text: FormattedText.fromJson(json['text'])!,
        disableWebPagePreview: json['disable_web_page_preview'],
        clearDraft: json['clear_draft']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'text': this.text,
        'disable_web_page_preview': this.disableWebPagePreview,
        'clear_draft': this.clearDraft,
        '@type': CONSTRUCTOR
      };
}
