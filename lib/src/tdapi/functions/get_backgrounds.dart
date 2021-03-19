part of '../tdapi.dart';

/// Group.Functions
/// Returns backgrounds installed by the user
class GetBackgrounds extends TdFunction {
  GetBackgrounds({required this.forDarkTheme});

  /// for_dark_theme True, if the backgrounds must be ordered for dark theme
  final bool forDarkTheme;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getBackgrounds';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'for_dark_theme': this.forDarkTheme,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
