part of '../tdapi.dart';

/// Group.Objects
/// A text with some entities
class FormattedText extends TdObject {
  FormattedText({required this.text, required this.entities});

  /// text The text
  final String text;

  /// entities Entities contained in the text. Entities can be nested, but must not mutually intersect with each other.. Pre, Code and PreCode entities can't contain other entities. Bold, Italic, Underline and Strikethrough entities can contain and to be contained in all other entities. All other entities can't contain each other
  final List<TextEntity> entities;

  static const String CONSTRUCTOR = 'formattedText';

  static FormattedText? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FormattedText(
        text: json['text'],
        entities: List<TextEntity>.from((json['entities}'] ?? [])
            .map((item) => TextEntity.fromJson(json['TextEntity'])!)
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'text': this.text, 'entities': this.entities, '@type': CONSTRUCTOR};
}
