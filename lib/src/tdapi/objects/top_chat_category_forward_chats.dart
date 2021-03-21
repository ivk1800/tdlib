import '../tdapi.dart';

/// A category containing frequently used chats used to forward messages
class TopChatCategoryForwardChats extends TopChatCategory {
  const TopChatCategoryForwardChats();

  static const String CONSTRUCTOR = 'topChatCategoryForwardChats';

  static TopChatCategoryForwardChats? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return const TopChatCategoryForwardChats();
  }

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {'@type': CONSTRUCTOR};
}
