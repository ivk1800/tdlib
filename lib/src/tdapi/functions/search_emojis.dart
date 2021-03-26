import '../tdapi.dart';

/// Searches for emojis by keywords. Supported only if the file database is
/// Returns [Emojis]
class SearchEmojis extends TdFunction {
  SearchEmojis(
      {required this.text,
      required this.exactMatch,
      required this.inputLanguageCodes});

  /// [text] Text to search for
  final String text;

  /// [exactMatch] True, if only emojis, which exactly match text needs to be
  ///
  final bool exactMatch;

  /// [inputLanguageCodes] List of possible IETF language tags of the user's
  /// language; may be empty if unknown
  final List<String> inputLanguageCodes;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'searchEmojis';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'text': this.text,
        'exact_match': this.exactMatch,
        'input_language_codes': inputLanguageCodes.map((item) => item).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
