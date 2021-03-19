part of '../tdapi.dart';

/// Group.Functions
/// Returns an HTTP URL which can be used to automatically authorize the user on a website after clicking an inline button of type inlineKeyboardButtonTypeLoginUrl.. Use the method getLoginUrlInfo to find whether a prior user confirmation is needed. If an error is returned, then the button must be handled as an ordinary URL button
class GetLoginUrl extends TdFunction {
  GetLoginUrl(
      {required this.chatId,
      required this.messageId,
      required this.buttonId,
      required this.allowWriteAccess});

  /// chat_id Chat identifier of the message with the button
  final int chatId;

  /// message_id Message identifier of the message with the button
  final int messageId;

  /// button_id Button identifier
  final int buttonId;

  /// allow_write_access True, if the user allowed the bot to send them messages
  final bool allowWriteAccess;

  /// callback sign
  dynamic extra;

  static const String CONSTRUCTOR = 'getLoginUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
  @override
  Map<String, dynamic> toJson() => {
        'chat_id': this.chatId,
        'message_id': this.messageId,
        'button_id': this.buttonId,
        'allow_write_access': this.allowWriteAccess,
        '@type': CONSTRUCTOR,
        '@extra': this.extra
      };
}
