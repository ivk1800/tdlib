part of '../tdapi.dart';

/// Group.Functions
/// Returns information about existing countries. Can be called before authorization
class GetCountries extends TdFunction {
  GetCountries();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getCountries';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
