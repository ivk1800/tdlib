part of '../tdapi.dart';

/// Parses Bold, Italic, Underline, Strikethrough, Code, Pre, PreCode, TextUrl and MentionName entities contained in the text. Can be called synchronously
class ParseTextEntities extends TdFunction {
  ParseTextEntities({required this.text, required this.parseMode});

  /// [text] The text to parse
  final String text;

  /// [parseMode] Text parse mode
  final TextParseMode parseMode;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'parseTextEntities';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'text': this.text,
        'parse_mode': this.parseMode,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
