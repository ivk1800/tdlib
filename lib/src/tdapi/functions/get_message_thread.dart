part of '../tdapi.dart';

/// Returns information about a message thread. Can be used only if message.can_get_message_thread == true
class GetMessageThread extends TdFunction {
  GetMessageThread({required this.chatId, required this.messageId});

  /// [chatId] Chat identifier
  final int chatId;

  /// [messageId] Identifier of the message
  final int messageId;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getMessageThread';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
