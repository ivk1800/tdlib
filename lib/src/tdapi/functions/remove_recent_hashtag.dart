part of '../tdapi.dart';

/// Group.Functions
/// Removes a hashtag from the list of recently used hashtags
class RemoveRecentHashtag extends TdFunction {
  RemoveRecentHashtag({required this.hashtag});

  /// hashtag Hashtag to delete
  final String hashtag;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'removeRecentHashtag';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'hashtag': this.hashtag, '@type': CONSTRUCTOR, '@extra': this.extra};
}
