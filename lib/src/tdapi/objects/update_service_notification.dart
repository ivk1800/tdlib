part of '../tdapi.dart';

/// Group.Objects
/// Service notification from the server. Upon receiving this the application must show a popup with the content of the notification
class UpdateServiceNotification extends Update {
  UpdateServiceNotification({required this.type, required this.content});

  /// type Notification type. If type begins with "AUTH_KEY_DROP_", then two buttons "Cancel" and "Log out" should be shown under notification; if user presses the second, all local data should be destroyed using Destroy method
  final String type;

  /// content Notification content
  final MessageContent content;

  static const String CONSTRUCTOR = 'updateServiceNotification';

  static UpdateServiceNotification? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateServiceNotification(
        type: json['type'], content: MessageContent.fromJson(json['content'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'type': this.type, 'content': this.content, '@type': CONSTRUCTOR};
}
