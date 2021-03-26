import '../tdapi.dart';

/// Deletes messages
/// Returns [Ok]
class DeleteMessages extends TdFunction {
  DeleteMessages(
      {required this.chatId, required this.messageIds, required this.revoke});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageIds] Identifiers of the messages to be deleted
  final List<int> messageIds;

  /// [revoke] Pass true to try to delete messages for all chat members. Always
  /// for supergroups, channels and secret chats
  final bool revoke;

  /// callback sign
  dynamic? extra;

  static const String CONSTRUCTOR = 'deleteMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_ids': messageIds.map((item) => item).toList(),
        'revoke': this.revoke,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
