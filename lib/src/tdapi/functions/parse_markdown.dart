import '../tdapi.dart';

/// Parses Markdown entities in a human-friendly format, ignoring markup
/// Can be called synchronously
/// Returns [FormattedText]
class ParseMarkdown extends TdFunction {
  ParseMarkdown({required this.text, this.extra});

  /// [text] The text to parse. For example, "__italic__
  final FormattedText text;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'parseMarkdown';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'text': this.text.toJson(), '@type': CONSTRUCTOR, '@extra': this.extra};
}
