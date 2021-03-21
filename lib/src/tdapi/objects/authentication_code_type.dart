import '../tdapi.dart';

/// Provides information about the method by which an authentication code is
/// to the user
abstract class AuthenticationCodeType extends TdObject {
  const AuthenticationCodeType();

  static const String CONSTRUCTOR = 'authenticationCodeType';

  /// Inherited by:
  /// [AuthenticationCodeTypeTelegramMessage]
  /// [AuthenticationCodeTypeSms]
  /// [AuthenticationCodeTypeCall]
  /// [AuthenticationCodeTypeFlashCall]
  static AuthenticationCodeType? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    switch (json["@type"]) {
      case AuthenticationCodeTypeTelegramMessage.CONSTRUCTOR:
        return AuthenticationCodeTypeTelegramMessage.fromJson(json);
      case AuthenticationCodeTypeSms.CONSTRUCTOR:
        return AuthenticationCodeTypeSms.fromJson(json);
      case AuthenticationCodeTypeCall.CONSTRUCTOR:
        return AuthenticationCodeTypeCall.fromJson(json);
      case AuthenticationCodeTypeFlashCall.CONSTRUCTOR:
        return AuthenticationCodeTypeFlashCall.fromJson(json);
      default:
        return null;
    }
  }

  @override
  String getConstructor() => CONSTRUCTOR;
}
