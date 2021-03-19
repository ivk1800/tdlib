part of '../tdapi.dart';

/// Group.Functions
/// Returns all entities (mentions, hashtags, cashtags, bot commands, bank card numbers, URLs, and email addresses) contained in the text. Can be called synchronously
class GetTextEntities extends TdFunction {
  GetTextEntities({required this.text});

  /// text The text in which to look for entites
  final String text;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getTextEntities';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'text': this.text, '@type': CONSTRUCTOR, '@extra': this.extra};
}
