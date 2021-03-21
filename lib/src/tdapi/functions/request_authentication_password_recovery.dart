part of '../tdapi.dart';

/// Requests to send a password recovery code to an email address that was previously set up. Works only when the current authorization state is authorizationStateWaitPassword
class RequestAuthenticationPasswordRecovery extends TdFunction {
  RequestAuthenticationPasswordRecovery();

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'requestAuthenticationPasswordRecovery';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR, '@extra': this.extra};
}
