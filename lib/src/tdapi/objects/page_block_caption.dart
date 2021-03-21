part of '../tdapi.dart';

/// Contains a caption of an instant view web page block, consisting of a text
/// a trailing credit
class PageBlockCaption extends TdObject {
  PageBlockCaption({required this.text, required this.credit});

  /// [text] Content of the caption
  final RichText text;

  /// [credit] Block credit (like HTML tag <cite>)
  final RichText credit;

  static const String CONSTRUCTOR = 'pageBlockCaption';

  static PageBlockCaption? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PageBlockCaption(
        text: RichText.fromJson(json['text'])!,
        credit: RichText.fromJson(json['credit'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'text': this.text, 'credit': this.credit, '@type': CONSTRUCTOR};
}
