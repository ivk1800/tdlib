part of '../tdapi.dart';

/// Replaces text entities with Markdown formatting in a human-friendly format. Entities that can't be represented in Markdown unambiguously are kept as is. Can be called synchronously
class GetMarkdownText extends TdFunction {
  GetMarkdownText({required this.text});

  /// [text] The text
  final FormattedText text;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getMarkdownText';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'text': this.text, '@type': CONSTRUCTOR, '@extra': this.extra};
}
