part of '../tdapi.dart';

/// Group.Objects
/// TDLib needs the user's authentication code to authorize
class AuthorizationStateWaitCode extends AuthorizationState {
  AuthorizationStateWaitCode({required this.codeInfo});

  /// code_info Information about the authorization code that was sent
  final AuthenticationCodeInfo codeInfo;

  static const String CONSTRUCTOR = 'authorizationStateWaitCode';

  static AuthorizationStateWaitCode? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AuthorizationStateWaitCode(
        codeInfo: AuthenticationCodeInfo.fromJson(json['code_info'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'code_info': this.codeInfo, '@type': CONSTRUCTOR};
}
