part of '../tdapi.dart';

/// A rule to restrict all specified users from doing something
class UserPrivacySettingRuleRestrictUsers extends UserPrivacySettingRule {
  UserPrivacySettingRuleRestrictUsers({required this.userIds});

  /// [userIds] The user identifiers, total number of users in all rules must
  /// exceed 1000
  final List<int> userIds;

  static const String CONSTRUCTOR = 'userPrivacySettingRuleRestrictUsers';

  static UserPrivacySettingRuleRestrictUsers? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UserPrivacySettingRuleRestrictUsers(
        userIds: List<int>.from(
            (json['user_ids}'] ?? []).map((item) => json['int']).toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'user_ids': this.userIds, '@type': CONSTRUCTOR};
}
