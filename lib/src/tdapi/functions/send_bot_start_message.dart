part of '../tdapi.dart';

/// Group.Functions
/// Invites a bot to a chat (if it is not yet a member) and sends it the /start command. Bots can't be invited to a private chat other than the chat with the bot. Bots can't be invited to channels (although they can be added as admins) and secret chats. Returns the sent message
class SendBotStartMessage extends TdFunction {
  SendBotStartMessage(
      {required this.botUserId, required this.chatId, required this.parameter});

  /// bot_user_id Identifier of the bot
  final int botUserId;

  /// chat_id Identifier of the target chat
  final int chatId;

  /// parameter A hidden parameter sent to the bot for deep linking purposes (https://core.telegram.org/bots#deep-linking)
  final String parameter;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'sendBotStartMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'bot_user_id': this.botUserId,
        'chat_id': this.chatId,
        'parameter': this.parameter,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
