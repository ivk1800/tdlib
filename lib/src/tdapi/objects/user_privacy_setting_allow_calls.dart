import '../tdapi.dart';

/// A privacy setting for managing whether the user can be called
class UserPrivacySettingAllowCalls extends UserPrivacySetting {
  const UserPrivacySettingAllowCalls();

  static const String CONSTRUCTOR = 'userPrivacySettingAllowCalls';

  static UserPrivacySettingAllowCalls? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const UserPrivacySettingAllowCalls();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
