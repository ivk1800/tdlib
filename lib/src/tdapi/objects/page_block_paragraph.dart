part of '../tdapi.dart';

/// Group.Objects
/// A text paragraph
class PageBlockParagraph extends PageBlock {
  PageBlockParagraph({required this.text});

  /// text Paragraph text
  final RichText text;

  static const String CONSTRUCTOR = 'pageBlockParagraph';

  static PageBlockParagraph? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockParagraph(text: RichText.fromJson(json['text'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'text': this.text, '@type': CONSTRUCTOR};
}
