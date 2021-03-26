import '../tdapi.dart';

/// A fixed-width rich text
class RichTextFixed extends RichText {
  RichTextFixed({required this.text});

  /// [text] Text
  final RichText text;

  static const String CONSTRUCTOR = 'richTextFixed';

  static RichTextFixed? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RichTextFixed(text: RichText.fromJson(json['text'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'text': this.text.toJson(), '@type': CONSTRUCTOR};
}
