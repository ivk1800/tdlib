import '../tdapi.dart';

/// Changes the value of the default disable_notification parameter, used when
/// message is sent to a chat
/// Returns [Ok]
class ToggleChatDefaultDisableNotification extends TdFunction {
  ToggleChatDefaultDisableNotification(
      {required this.chatId,
      required this.defaultDisableNotification,
      this.extra});

  /// [chatId] Chat identifier
  final int chatId;

  /// [defaultDisableNotification] New value of default_disable_notification
  final bool defaultDisableNotification;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'toggleChatDefaultDisableNotification';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'default_disable_notification': this.defaultDisableNotification,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
