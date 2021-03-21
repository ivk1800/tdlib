part of '../tdapi.dart';

/// A privacy setting for managing whether peer-to-peer connections can be
/// for calls
class UserPrivacySettingAllowPeerToPeerCalls extends UserPrivacySetting {
  const UserPrivacySettingAllowPeerToPeerCalls();

  static const String CONSTRUCTOR = 'userPrivacySettingAllowPeerToPeerCalls';

  static UserPrivacySettingAllowPeerToPeerCalls? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingAllowPeerToPeerCalls();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
