import '../tdapi.dart';

/// Adds, edits or deletes a string in a custom local language pack. Can be
/// before authorization
/// Returns [Ok]
class SetCustomLanguagePackString extends TdFunction {
  SetCustomLanguagePackString(
      {required this.languagePackId, required this.newString, this.extra});

  /// [languagePackId] Identifier of a previously added custom local language
  /// in the current localization target
  final String languagePackId;

  /// [newString] New language pack string
  final LanguagePackString newString;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'setCustomLanguagePackString';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'language_pack_id': this.languagePackId,
        'new_string': this.newString.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
