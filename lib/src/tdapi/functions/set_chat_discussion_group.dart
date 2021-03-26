import '../tdapi.dart';

/// Changes the discussion group of a channel chat; requires can_change_info
/// in the channel if it is specified
/// Returns [Ok]
class SetChatDiscussionGroup extends TdFunction {
  SetChatDiscussionGroup(
      {required this.chatId, required this.discussionChatId, this.extra});

  /// [chatId] Identifier of the channel chat. Pass 0 to remove a link from the
  /// passed in the second argument to a linked channel chat (requires
  /// rights in the supergroup)
  final int chatId;

  /// [discussionChatId] Identifier of a new channel's discussion group. Use 0
  /// remove the discussion group.. Use the method getSuitableDiscussionChats to
  /// all suitable groups. Basic group chats must be first upgraded to
  /// chats. If new chat members don't have access to old messages in the
  /// then toggleSupergroupIsAllHistoryAvailable must be used first to change
  final int discussionChatId;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'setChatDiscussionGroup';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'discussion_chat_id': this.discussionChatId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
