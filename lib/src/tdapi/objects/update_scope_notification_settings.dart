part of '../tdapi.dart';

/// Group.Objects
/// Notification settings for some type of chats were updated
class UpdateScopeNotificationSettings extends Update {
  UpdateScopeNotificationSettings(
      {required this.scope, required this.notificationSettings});

  /// scope Types of chats for which notification settings were updated
  final NotificationSettingsScope scope;

  /// notification_settings The new notification settings
  final ScopeNotificationSettings notificationSettings;

  static const String CONSTRUCTOR = 'updateScopeNotificationSettings';

  static UpdateScopeNotificationSettings? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateScopeNotificationSettings(
        scope: NotificationSettingsScope.fromJson(json['scope'])!,
        notificationSettings:
            ScopeNotificationSettings.fromJson(json['notification_settings'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'scope': this.scope,
        'notification_settings': this.notificationSettings,
        '@type': CONSTRUCTOR
      };
}
