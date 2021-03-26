import '../tdapi.dart';

/// Sends a notification about user activity in a chat
/// Returns [Ok]
class SendChatAction extends TdFunction {
  SendChatAction(
      {required this.chatId,
      required this.messageThreadId,
      required this.action,
      this.extra});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageThreadId] If not 0, a message thread identifier in which the
  /// was performed
  final int messageThreadId;

  /// [action] The action description
  final ChatAction action;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'sendChatAction';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_thread_id': this.messageThreadId,
        'action': this.action.toJson(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
