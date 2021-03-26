import '../tdapi.dart';

/// Changes notification settings for chats of a given type
/// Returns [Ok]
class SetScopeNotificationSettings extends TdFunction {
  SetScopeNotificationSettings(
      {required this.scope, required this.notificationSettings, this.extra});

  /// [scope] Types of chats for which to change the notification settings
  final NotificationSettingsScope scope;

  /// [notificationSettings] The new notification settings for the given scope
  final ScopeNotificationSettings notificationSettings;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'setScopeNotificationSettings';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'scope': this.scope.toJson(),
        'notification_settings': this.notificationSettings.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
