import '../tdapi.dart';

/// A strikethrough rich text
class RichTextStrikethrough extends RichText {
  RichTextStrikethrough({required this.text});

  /// [text] Text
  final RichText text;

  static const String CONSTRUCTOR = 'richTextStrikethrough';

  static RichTextStrikethrough? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextStrikethrough(text: RichText.fromJson(json['text'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'text': this.text.toJson(), '@type': CONSTRUCTOR};
}
