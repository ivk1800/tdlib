part of '../tdapi.dart';

/// Returns messages in a chat. The messages are returned in a reverse
/// order (i.e., in order of decreasing message_id).. For optimal performance
/// number of returned messages is chosen by the library. This is an offline
/// if only_local is true
class GetChatHistory extends TdFunction {
  GetChatHistory(
      {required this.chatId,
      required this.fromMessageId,
      required this.offset,
      required this.limit,
      required this.onlyLocal});

  /// [chatId] Chat identifier
  final int chatId;

  /// [fromMessageId] Identifier of the message starting from which history must
  /// fetched; use 0 to get results from the last message
  final int fromMessageId;

  /// [offset] Specify 0 to get results from exactly the from_message_id or a
  /// offset up to 99 to get additionally some newer messages
  final int offset;

  /// [limit] The maximum number of messages to be returned; must be positive
  /// can't be greater than 100. If the offset is negative, the limit must be
  /// than or equal to -offset. Fewer messages may be returned than specified by
  /// limit, even if the end of the message history has not been reached
  final int limit;

  /// [onlyLocal] If true, returns only messages that are available locally
  /// sending network requests
  final bool onlyLocal;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getChatHistory';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'from_message_id': this.fromMessageId,
        'offset': this.offset,
        'limit': this.limit,
        'only_local': this.onlyLocal,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
