part of '../tdapi.dart';

/// Group.Objects
/// Contains information about a message thread
class MessageThreadInfo extends TdObject {
  MessageThreadInfo(
      {required this.chatId,
      required this.messageThreadId,
      required this.replyInfo,
      required this.messages,
      DraftMessage? this.draftMessage});

  /// chat_id Identifier of the chat to which the message thread belongs
  final int chatId;

  /// message_thread_id Message thread identifier, unique within the chat
  final int messageThreadId;

  /// reply_info Contains information about the message thread
  final MessageReplyInfo replyInfo;

  /// messages The messages from which the thread starts. The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id)
  final List<Message> messages;

  /// draft_message A draft of a message in the message thread; may be null
  final DraftMessage? draftMessage;

  static const String CONSTRUCTOR = 'messageThreadInfo';

  static MessageThreadInfo? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MessageThreadInfo(
        chatId: json['chat_id'],
        messageThreadId: json['message_thread_id'],
        replyInfo: MessageReplyInfo.fromJson(json['reply_info'])!,
        messages: List<Message>.from((json['messages}'] ?? [])
            .map((item) => Message.fromJson(json['Message'])!)
            .toList()),
        draftMessage: DraftMessage.fromJson(json['draft_message']));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_thread_id': this.messageThreadId,
        'reply_info': this.replyInfo,
        'messages': this.messages,
        'draft_message': this.draftMessage,
        '@type': CONSTRUCTOR
      };
}
