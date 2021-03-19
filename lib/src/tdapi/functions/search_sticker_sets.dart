part of '../tdapi.dart';

/// Group.Functions
/// Searches for ordinary sticker sets by looking for specified query in their title and name. Excludes installed sticker sets from the results
class SearchStickerSets extends TdFunction {
  SearchStickerSets({required this.query});

  /// query Query to search for
  final String query;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'searchStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'query': this.query, '@type': CONSTRUCTOR, '@extra': this.extra};
}
