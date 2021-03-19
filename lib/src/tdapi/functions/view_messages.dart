part of '../tdapi.dart';

/// Group.Functions
/// Informs TDLib that messages are being viewed by the user. Many useful activities depend on whether the messages are currently being viewed or not (e.g., marking messages as read, incrementing a view counter, updating a view counter, removing deleted messages in supergroups and channels)
class ViewMessages extends TdFunction {
  ViewMessages(
      {required this.chatId,
      required this.messageThreadId,
      required this.messageIds,
      required this.forceRead});

  /// chat_id Chat identifier
  final int chatId;

  /// message_thread_id If not 0, a message thread identifier in which the messages are being viewed
  final int messageThreadId;

  /// message_ids The identifiers of the messages being viewed
  final List<int> messageIds;

  /// force_read True, if messages in closed chats should be marked as read by the request
  final bool forceRead;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'viewMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_thread_id': this.messageThreadId,
        'message_ids': this.messageIds,
        'force_read': this.forceRead,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
