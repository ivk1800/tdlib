part of '../tdapi.dart';

/// Adds or changes a custom local language pack to the current localization target
class SetCustomLanguagePack extends TdFunction {
  SetCustomLanguagePack({required this.info, required this.strings});

  /// [info] Information about the language pack. Language pack ID must start with 'X', consist only of English letters, digits and hyphens, and must not exceed 64 characters. Can be called before authorization
  final LanguagePackInfo info;

  /// [strings] Strings of the new language pack
  final List<LanguagePackString> strings;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'setCustomLanguagePack';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'info': this.info,
        'strings': this.strings,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
