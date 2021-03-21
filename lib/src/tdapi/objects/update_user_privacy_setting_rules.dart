part of '../tdapi.dart';

/// Some privacy setting rules have been changed
class UpdateUserPrivacySettingRules extends Update {
  UpdateUserPrivacySettingRules({required this.setting, required this.rules});

  /// [setting] The privacy setting
  final UserPrivacySetting setting;

  /// [rules] New privacy rules
  final UserPrivacySettingRules rules;

  static const String CONSTRUCTOR = 'updateUserPrivacySettingRules';

  static UpdateUserPrivacySettingRules? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateUserPrivacySettingRules(
        setting: UserPrivacySetting.fromJson(json['setting'])!,
        rules: UserPrivacySettingRules.fromJson(json['rules'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'setting': this.setting, 'rules': this.rules, '@type': CONSTRUCTOR};
}
