part of '../tdapi.dart';

/// Group.Objects
/// The user authorization state has changed
class UpdateAuthorizationState extends Update {
  UpdateAuthorizationState({required this.authorizationState});

  /// authorization_state New authorization state
  final AuthorizationState authorizationState;

  static const String CONSTRUCTOR = 'updateAuthorizationState';

  static UpdateAuthorizationState? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateAuthorizationState(
        authorizationState:
            AuthorizationState.fromJson(json['authorization_state'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'authorization_state': this.authorizationState, '@type': CONSTRUCTOR};
}
