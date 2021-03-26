import '../tdapi.dart';

/// Returns information about the recent locations of chat members that were
/// to the chat. Returns up to 1 location message per user
/// Returns [Messages]
class SearchChatRecentLocationMessages extends TdFunction {
  SearchChatRecentLocationMessages(
      {required this.chatId, required this.limit, this.extra});

  /// [chatId] Chat identifier
  final int chatId;

  /// [limit] The maximum number of messages to be returned
  final int limit;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'searchChatRecentLocationMessages';

  @override
  dynamic? getExtra() => this.extra;
  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'limit': this.limit,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
