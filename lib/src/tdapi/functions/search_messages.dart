part of '../tdapi.dart';

/// Group.Functions
/// Searches for messages in all chats except secret chats. Returns the results in reverse chronological order (i.e., in order of decreasing (date, chat_id, message_id)).. For optimal performance the number of returned messages is chosen by the library
class SearchMessages extends TdFunction {
  SearchMessages(
      {required this.chatList,
      required this.query,
      required this.offsetDate,
      required this.offsetChatId,
      required this.offsetMessageId,
      required this.limit,
      required this.filter,
      required this.minDate,
      required this.maxDate});

  /// chat_list Chat list in which to search messages; pass null to search in all chats regardless of their chat list
  final ChatList chatList;

  /// query Query to search for
  final String query;

  /// offset_date The date of the message starting from which the results should be fetched. Use 0 or any date in the future to get results from the last message
  final int offsetDate;

  /// offset_chat_id The chat identifier of the last found message, or 0 for the first request
  final int offsetChatId;

  /// offset_message_id The message identifier of the last found message, or 0 for the first request
  final int offsetMessageId;

  /// limit The maximum number of messages to be returned; up to 100. Fewer messages may be returned than specified by the limit, even if the end of the message history has not been reached
  final int limit;

  /// filter Filter for message content in the search results; searchMessagesFilterCall, searchMessagesFilterMissedCall, searchMessagesFilterMention, searchMessagesFilterUnreadMention, searchMessagesFilterFailedToSend and searchMessagesFilterPinned are unsupported in this function
  final SearchMessagesFilter filter;

  /// min_date If not 0, the minimum date of the messages to return
  final int minDate;

  /// max_date If not 0, the maximum date of the messages to return
  final int maxDate;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'searchMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_list': this.chatList,
        'query': this.query,
        'offset_date': this.offsetDate,
        'offset_chat_id': this.offsetChatId,
        'offset_message_id': this.offsetMessageId,
        'limit': this.limit,
        'filter': this.filter,
        'min_date': this.minDate,
        'max_date': this.maxDate,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
