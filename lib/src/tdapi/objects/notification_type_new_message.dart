import '../tdapi.dart';

/// New message was received
class NotificationTypeNewMessage extends NotificationType {
  NotificationTypeNewMessage({required this.message});

  /// [message] The message
  final Message message;

  static const String CONSTRUCTOR = 'notificationTypeNewMessage';

  static NotificationTypeNewMessage? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NotificationTypeNewMessage(
        message: Message.fromJson(json['message'])!);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'message': this.message.toJson(), '@type': CONSTRUCTOR};
}
