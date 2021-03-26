import '../tdapi.dart';

/// Returns the current state of 2-step verification
/// Returns [PasswordState]
class GetPasswordState extends TdFunction {
  GetPasswordState();

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'getPasswordState';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
