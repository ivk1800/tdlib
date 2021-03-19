part of '../tdapi.dart';

/// Group.Objects
/// Contains a list of chat lists
class ChatLists extends TdObject {
  ChatLists({required this.chatLists});

  /// chat_lists List of chat lists
  final List<ChatList> chatLists;

  static const String CONSTRUCTOR = 'chatLists';

  static ChatLists? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ChatLists(
        chatLists: List<ChatList>.from((json['chat_lists}'] ?? [])
            .map((item) => ChatList.fromJson(json['ChatList'])!)
            .toList()));
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() =>
      {'chat_lists': this.chatLists, '@type': CONSTRUCTOR};
}
