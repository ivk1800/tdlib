import '../tdapi.dart';

/// Changes the order of pinned chats
/// Returns [Ok]
class SetPinnedChats extends TdFunction {
  SetPinnedChats({required this.chatList, required this.chatIds});

  /// [chatList] Chat list in which to change the order of pinned chats
  final ChatList chatList;

  /// [chatIds] The new list of pinned chats
  final List<int> chatIds;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'setPinnedChats';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_list': this.chatList.toJson(),
        'chat_ids': chatIds.map((item) => item).toList(),
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
