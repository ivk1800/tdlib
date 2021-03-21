part of '../tdapi.dart';

/// A text message
class MessageText extends MessageContent {
  MessageText({required this.text, WebPage? this.webPage});

  /// [text] Text of the message
  final FormattedText text;

  /// [webPage] A preview of the web page that's mentioned in the text; may be
  final WebPage? webPage;

  static const String CONSTRUCTOR = 'messageText';

  static MessageText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageText(
        text: FormattedText.fromJson(json['text'])!,
        webPage: WebPage.fromJson(json['web_page']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'text': this.text, 'web_page': this.webPage, '@type': CONSTRUCTOR};
}
