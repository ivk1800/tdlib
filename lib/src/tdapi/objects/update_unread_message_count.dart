part of '../tdapi.dart';

/// Group.Objects
/// Number of unread messages in a chat list has changed. This update is sent only if the message database is used
class UpdateUnreadMessageCount extends Update {
  UpdateUnreadMessageCount(
      {required this.chatList,
      required this.unreadCount,
      required this.unreadUnmutedCount});

  /// chat_list The chat list with changed number of unread messages
  final ChatList chatList;

  /// unread_count Total number of unread messages
  final int unreadCount;

  /// unread_unmuted_count Total number of unread messages in unmuted chats
  final int unreadUnmutedCount;

  static const String CONSTRUCTOR = 'updateUnreadMessageCount';

  static UpdateUnreadMessageCount? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return UpdateUnreadMessageCount(
        chatList: ChatList.fromJson(json['chat_list'])!,
        unreadCount: json['unread_count'],
        unreadUnmutedCount: json['unread_unmuted_count']);
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_list': this.chatList,
        'unread_count': this.unreadCount,
        'unread_unmuted_count': this.unreadUnmutedCount,
        '@type': CONSTRUCTOR
      };
}
